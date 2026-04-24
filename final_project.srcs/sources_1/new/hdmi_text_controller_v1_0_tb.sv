//HDMI Text Controller Example Testbench for ECE 385
//Spring 2026 Distribution

//Modified 3/29/26 by Zuofu
//
//Based on Realdigital documentation on simulating AXI Bus
//as well as BMP writing code from @BrianHGinc
//
//Used for simulation of AXI4-Lite bus as well as generating
//simulation video image for testing

`define SIM_VIDEO //Comment out to simulate AXI bus only
                    //Uncomment to simulate entire screen and write BMP (slow)

module hdmi_text_controller_tb();

	//clock and reset_n signals
	logic aclk =1'b0;
	logic arstn = 1'b0;
	
	//Write Address channel (AW)
	logic [31:0] write_addr =32'd0;	//Master write address
	logic [2:0] write_prot = 3'd0;	//type of write(leave at 0)
	logic write_addr_valid = 1'b0;	//master indicating address is valid
	logic write_addr_ready;		    //slave ready to receive address

	//Write Data Channel (W)
	logic [31:0] write_data = 32'd0;	//Master write data
	logic [3:0] write_strb = 4'd0;	    //Master byte-wise write strobe
	logic write_data_valid = 1'b0;	    //Master indicating write data is valid
	logic write_data_ready;		        //slave ready to receive data

	//Write Response Channel (WR)
	logic write_resp_ready = 1'b0;	//Master ready to receive write response
	logic [1:0] write_resp;		    //slave write response
	logic write_resp_valid;		    //slave response valid
	
	//Read Address channel (AR)
	logic [31:0] read_addr = 32'd0;	//Master read address
	logic [2:0] read_prot =3'd0;	//type of read(leave at 0)
	logic read_addr_valid = 1'b0;	//Master indicating address is valid
	logic read_addr_ready;		    //slave ready to receive address

	//Read Data Channel (R)
	logic read_data_ready = 1'b0;	//Master indicating ready to receive data
	logic [31:0] read_data;		    //slave read data
	logic [1:0] read_resp;		    //slave read response
	logic read_data_valid;		    //slave indicating data in channel is valid

    //Although we can look at the HDMI signal, it is not particularly useful for debugging
    //Instead, simulate and record the pixel clock and the pixel RGB values to generate
    //a simulated image
    logic [3:0] pixel_rgb [3];
    logic pixel_clk, pixel_hs, pixel_vs, pixel_vde;
    logic [9:0] drawX, drawY;
    logic [31:0] tb_read;
    
    //BMP writer related signals    
    localparam BMP_WIDTH  = 800;
    localparam BMP_HEIGHT = 525;
    logic [23:0] bitmap [BMP_WIDTH][BMP_HEIGHT];
    
    logic [31:0] write_checksum;
    logic [31:0] read_checksum;
    logic [31:0] rb;

    integer i,j; //use integers for loop indices, etc

	//Instantiation of DUT (HDMI TEXT_CONTROLLER) IP
	hdmi_text_controller_v1_0 # (
		.C_AXI_DATA_WIDTH(32),
		.C_AXI_ADDR_WIDTH(16)
	) hdmi_text_controller_v1_0_inst (

		.axi_aclk(aclk),
		.axi_aresetn(arstn),

		.axi_awaddr(write_addr),
		.axi_awprot(write_prot),
		.axi_awvalid(write_addr_valid),
		.axi_awready(write_addr_ready),

		.axi_wdata(write_data),
		.axi_wstrb(write_strb),
		.axi_wvalid(write_data_valid),
		.axi_wready(write_data_ready),

		.axi_bresp(write_resp),
		.axi_bvalid(write_resp_valid),
		.axi_bready(write_resp_ready),

		.axi_araddr(read_addr),
		.axi_arprot(read_prot),
		.axi_arvalid(read_addr_valid),
		.axi_arready(read_addr_ready),

		.axi_rdata(read_data),
		.axi_rresp(read_resp),
		.axi_rvalid(read_data_valid),
		.axi_rready(read_data_ready)
	);
	
	initial begin: CLOCK_INITIALIZATION
	   aclk = 1'b1;
    end 
       
    always begin : CLOCK_GENERATION
        #5 aclk = ~aclk;
    end

    assign pixel_rgb[0] = hdmi_text_controller_v1_0_inst.red;
    assign pixel_rgb[1] = hdmi_text_controller_v1_0_inst.green;
    assign pixel_rgb[2] = hdmi_text_controller_v1_0_inst.blue;
    
    assign pixel_clk = hdmi_text_controller_v1_0_inst.clk_25MHz;
    assign pixel_hs  = hdmi_text_controller_v1_0_inst.hsync;
    assign pixel_vs  = hdmi_text_controller_v1_0_inst.vsync;
    assign pixel_vde = hdmi_text_controller_v1_0_inst.vde;
    
    assign drawX = hdmi_text_controller_v1_0_inst.drawX;
    assign drawY = hdmi_text_controller_v1_0_inst.drawY;
   
    // BMP writing task, based off work from @BrianHGinc:
    // https://github.com/BrianHGinc/SystemVerilog-TestBench-BPM-picture-generator
    task save_bmp(string bmp_file_name);
        begin
        
            integer unsigned        fout_bmp_pointer, BMP_file_size,BMP_row_size,r;
            logic   unsigned [31:0] BMP_header[0:12];
        
                                      BMP_row_size  = 32'(BMP_WIDTH) & 32'hFFFC;
        if ((BMP_WIDTH & 32'd3) !=0)  BMP_row_size  = BMP_row_size + 4;
    
        fout_bmp_pointer= $fopen(bmp_file_name,"wb");
        if (fout_bmp_pointer==0) begin
            $display("Could not open file '%s' for writing",bmp_file_name);
            $stop;     
        end
        $display("Saving bitmap '%s'.",bmp_file_name);
       
        BMP_header[0:12] = '{BMP_file_size,0,0054,40,BMP_WIDTH,BMP_HEIGHT,{16'd24,16'd8},0,(BMP_row_size*BMP_HEIGHT*3),2835,2835,0,0};
        
        $fwrite(fout_bmp_pointer,"BM");
        for (int i =0 ; i <13 ; i++ )
            $fwrite(fout_bmp_pointer,"%c%c%c%c",BMP_header[i][7 -:8],BMP_header[i][15 -:8],BMP_header[i][23 -:8],BMP_header[i][31 -:8]);
        
        for (int y=BMP_HEIGHT-1;y>=0;y--) begin
          for (int x=0;x<BMP_WIDTH;x++)
            $fwrite(fout_bmp_pointer,"%c%c%c",bitmap[x][y][23:16],bitmap[x][y][15:8],bitmap[x][y][7:0]) ;
        end
    
        $fclose(fout_bmp_pointer);
        end
    endtask
    
    always@(posedge pixel_clk)
        if (!arstn) begin
            for (j = 0; j < BMP_HEIGHT; j++)
                for (i = 0; i < BMP_WIDTH; i++)
                    bitmap[i][j] <= 24'h0F0F0F;
        end
        else
            if (pixel_vde)
                bitmap[drawX][drawY] <= {pixel_rgb[2], 4'h0, pixel_rgb[1], 4'h0, pixel_rgb[0], 4'h00};

    task axi_write (input logic [31:0] addr, input logic [31:0] data);
        begin
            #3 write_addr <= addr;
            write_data <= data;
            write_addr_valid <= 1'b1;
            write_data_valid <= 1'b1;
            write_resp_ready <= 1'b1;
            write_strb <= 4'hF;
    
            wait(write_data_ready || write_addr_ready);
                
            @(posedge aclk);
            if(write_data_ready&&write_addr_ready)
            begin
                write_addr_valid<=0;
                write_data_valid<=0;
            end
            else
            begin
                if(write_data_ready)
                begin
                    write_data_valid<=0;
                    wait(write_addr_ready);
                end
                else if(write_addr_ready)
                begin
                    write_addr_valid<=0;
                    wait(write_data_ready);
                end 
                @ (posedge aclk);
                write_addr_valid<=0;
                write_data_valid<=0;
            end
                
            write_strb<=0;
    
            wait(write_resp_valid);
            
            @(posedge aclk);
    
            write_resp_ready<=0;
        end
    endtask;
    
task axi_read (input logic [31:0] addr, output logic [31:0] data);
    begin
        // Present read address
        @(posedge aclk);
        read_addr       <= addr;
        read_addr_valid <= 1'b1;
        read_data_ready <= 1'b1;

        // Wait until AR handshake happens
        while (!(read_addr_valid && read_addr_ready))
            @(posedge aclk);

        // Drop ARVALID after the handshake
        @(posedge aclk);
        read_addr_valid <= 1'b0;

        // Wait until R handshake happens
        while (!(read_data_valid && read_data_ready))
            @(posedge aclk);

        // Sample data on the handshake cycle
        data = read_data;

        // Drop RREADY after the handshake
        @(posedge aclk);
        read_data_ready <= 1'b0;
    end
endtask
  
    initial begin: TEST_VECTORS
    arstn = 0;
    repeat (4) @(posedge aclk);
    arstn <= 1;

    // --- Set up palette registers ---
    // Palette reg 0 (0x2000): color 0 = black (0x000), color 1 = blue (0x36B)
    repeat (4) @(posedge aclk) axi_write(16'h2000, 32'h036B_0000);
    // Palette reg 1 (0x2004): color 2 = orange (0xE94), color 3 = white (0xFFF)
    repeat (4) @(posedge aclk) axi_write(16'h2004, 32'h0FFF_0E94);

    // --- Write string to VRAM ---
    // "mihirt2 and aidenye2 completed ECE 385!!" (40 chars = 20 words)
    //  ^^^^^^^ blue       ^^^^^^^^ blue
    //          ^^^^^ white          ^^^^^^^^^^ white
    //                                         ^^^^^^^^^ orange
    //
    // 16-bit encoding: {inv, ascii[6:0], fg[3:0], bg[3:0]}
    //   Blue on black:   fg=1, bg=0 ? 0x__10
    //   White on black:  fg=3, bg=0 ? 0x__30
    //   Orange on black: fg=2, bg=0 ? 0x__20
    // 32-bit word: {odd_char[15:0], even_char[15:0]}

    // Word  0: 'm'(blue)  'i'(blue)
    repeat (4) @(posedge aclk) axi_write(16'h0000, 32'h6910_6D10);
    // Word  1: 'h'(blue)  'i'(blue)
    repeat (4) @(posedge aclk) axi_write(16'h0004, 32'h6910_6810);
    // Word  2: 'r'(blue)  't'(blue)
    repeat (4) @(posedge aclk) axi_write(16'h0008, 32'h7410_7210);
    // Word  3: '2'(blue)  ' '(white)
    repeat (4) @(posedge aclk) axi_write(16'h000C, 32'h2030_3210);
    // Word  4: 'a'(white) 'n'(white)
    repeat (4) @(posedge aclk) axi_write(16'h0010, 32'h6E30_6130);
    // Word  5: 'd'(white) ' '(white)
    repeat (4) @(posedge aclk) axi_write(16'h0014, 32'h2030_6430);
    // Word  6: 'a'(blue)  'i'(blue)
    repeat (4) @(posedge aclk) axi_write(16'h0018, 32'h6910_6110);
    // Word  7: 'd'(blue)  'e'(blue)
    repeat (4) @(posedge aclk) axi_write(16'h001C, 32'h6510_6410);
    // Word  8: 'n'(blue)  'y'(blue)
    repeat (4) @(posedge aclk) axi_write(16'h0020, 32'h7910_6E10);
    // Word  9: 'e'(blue)  '2'(blue)
    repeat (4) @(posedge aclk) axi_write(16'h0024, 32'h3210_6510);
    // Word 10: ' '(white) 'c'(white)
    repeat (4) @(posedge aclk) axi_write(16'h0028, 32'h6330_2030);
    // Word 11: 'o'(white) 'm'(white)
    repeat (4) @(posedge aclk) axi_write(16'h002C, 32'h6D30_6F30);
    // Word 12: 'p'(white) 'l'(white)
    repeat (4) @(posedge aclk) axi_write(16'h0030, 32'h6C30_7030);
    // Word 13: 'e'(white) 't'(white)
    repeat (4) @(posedge aclk) axi_write(16'h0034, 32'h7430_6530);
    // Word 14: 'e'(white) 'd'(white)
    repeat (4) @(posedge aclk) axi_write(16'h0038, 32'h6430_6530);
    // Word 15: ' '(white) 'E'(orange)
    repeat (4) @(posedge aclk) axi_write(16'h003C, 32'h4520_2030);
    // Word 16: 'C'(orange) 'E'(orange)
    repeat (4) @(posedge aclk) axi_write(16'h0040, 32'h4520_4320);
    // Word 17: ' '(orange) '3'(orange)
    repeat (4) @(posedge aclk) axi_write(16'h0044, 32'h3320_2020);
    // Word 18: '8'(orange) '5'(orange)
    repeat (4) @(posedge aclk) axi_write(16'h0048, 32'h3520_3820);
    // Word 19: '!'(orange) '!'(orange)
    repeat (4) @(posedge aclk) axi_write(16'h004C, 32'h2120_2120);

    `ifdef SIM_VIDEO
    wait (~pixel_vs);
    save_bmp ("lab7_2_sim.bmp");
    `endif
    $finish();
end
    
endmodule