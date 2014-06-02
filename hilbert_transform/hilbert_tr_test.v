`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:57:11 03/04/2014
// Design Name:   fft_sequent
// Module Name:   C:/Users/Shubhangee/Downloads/fft_2/fft_sequent_test.v
// Project Name:  fft_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fft_sequent
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fft_sequent_test;

	// Inputs
	reg [31:0] a0;
	reg [31:0] a1;
	reg [31:0] a2;
	reg [31:0] a3;
	reg [31:0] a4;
	reg [31:0] a5;
	reg [31:0] a6;
	reg [31:0] a7;
	reg [31:0] a8;
	reg [31:0] a9;
	reg [31:0] a10;
	reg [31:0] a11;
	reg [31:0] a12;
	reg [31:0] a13;
	reg [31:0] a14;
	reg [31:0] a15;
	reg [31:0] a16;
	reg [31:0] a17;
	reg [31:0] a18;
	reg [31:0] a19;
	reg [31:0] a20;
	reg [31:0] a21;
	reg [31:0] a22;
	reg [31:0] a23;
	reg [31:0] a24;
	reg [31:0] a25;
	reg [31:0] a26;
	reg [31:0] a27;
	reg [31:0] a28;
	reg [31:0] a29;
	reg [31:0] a30;
	reg [31:0] a31;
	reg clk;
	reg enable;
	
	//output
	/*
	 wire [31:0]  br0;
	 wire [31:0]  br1;
	 wire [31:0]  br2;
	 wire [31:0]  br3;
	 wire [31:0]  br4;
	 wire [31:0]  br5;
	 wire [31:0]  br6;
	 wire [31:0]  br7;
	 wire [31:0]  br8;
	 wire [31:0]  br9;
	 wire [31:0]  br10;
	 wire [31:0]  br11;
	 wire [31:0]  br12;
	 wire [31:0]  br13;
	 wire [31:0]  br14;
	 wire [31:0]  br15;
	 wire [31:0]  br16;
	 wire [31:0]  br17;
	 wire [31:0]  br18;
	 wire [31:0]  br19;
	 wire [31:0]  br20;
	 wire [31:0]  br21;
	 wire [31:0]  br22;
	 wire [31:0]  br23;
	 wire [31:0]  br24;
	 wire [31:0]  br25;
	 wire [31:0]  br26;
	 wire [31:0]  br27;
	 wire [31:0]  br28;
	 wire [31:0]  br29;
	 wire [31:0]  br30;
	 wire [31:0]  br31;
	 
	 
	 
	 wire [31:0]  bi0;
	 wire [31:0]  bi1;
	 wire [31:0]  bi2;
	 wire [31:0]  bi3;
	 wire [31:0]  bi4;
	 wire [31:0]  bi5;
	 wire [31:0]  bi6;
	 wire [31:0]  bi7;	 
	 wire [31:0]  bi8;
	 wire [31:0]  bi9;
	 wire [31:0]  bi10;
	 wire [31:0]  bi11;
	 wire [31:0]  bi12;
	 wire [31:0]  bi13;
	 wire [31:0]  bi14;
	 wire [31:0]  bi15;	 
	 wire [31:0]  bi16;
	 wire [31:0]  bi17;
	 wire [31:0]  bi18;
	 wire [31:0]  bi19;
	 wire [31:0]  bi20;
	 wire [31:0]  bi21;
	 wire [31:0]  bi22;
	 wire [31:0]  bi23;	 
	 wire [31:0]  bi24;
	 wire [31:0]  bi25;
	 wire [31:0]  bi26;
	 wire [31:0]  bi27;
	 wire [31:0]  bi28;
	 wire [31:0]  bi29;
	 wire [31:0]  bi30;
	 wire [31:0]  bi31;
	*/
	// Instantiate the Unit Under Test (UUT)
	fft_sequent uut (
		.a0(a0), 
		.a1(a1), 
		.a2(a2), 
		.a3(a3), 
		.a4(a4), 
		.a5(a5), 
		.a6(a6), 
		.a7(a7),
		.a8(a8), 
		.a9(a9), 
		.a10(a10), 
		.a11(a11), 
		.a12(a12), 
		.a13(a13), 
		.a14(a14), 
		.a15(a15),
		.a16(a16), 
		.a17(a17), 
		.a18(a18), 
		.a19(a19), 
		.a20(a20), 
		.a21(a21), 
		.a22(a22), 
		.a23(a23),
		.a24(a24), 
		.a25(a25), 
		.a26(a26), 
		.a27(a27), 
		.a28(a28), 
		.a29(a29), 
		.a30(a30), 
		.a31(a31),
		.clk(clk),
		.bi0(mem3[0]),
		.bi1(mem3[1]),
		.bi2(mem3[2]),
		.bi3(mem3[3]),
		.bi4(mem3[4]),
		.bi5(mem3[5]),
		.bi6(mem3[6]),
		.bi7(mem3[7]),
		.bi8(mem3[8]),
		.bi9(mem3[9]),
		.bi10(mem3[10]),
		.bi11(mem3[11]),
		.bi12(mem3[12]),
		.bi13(mem3[13]),
		.bi14(mem3[14]),
		.bi15(mem3[15]),
		.bi16(mem3[16]),
		.bi17(mem3[17]),
		.bi18(mem3[18]),
		.bi19(mem3[19]),
		.bi20(mem3[20]),
		.bi21(mem3[21]),
		.bi22(mem3[22]),
		.bi23(mem3[23]),
		.bi24(mem3[24]),
		.bi25(mem3[25]),
		.bi26(mem3[26]),
		.bi27(mem3[27]),
		.bi28(mem3[28]),
		.bi29(mem3[29]),
		.bi30(mem3[30]),
		.bi31(mem3[31]),		
		.br0(mem2[0]),
		.br1(mem2[1]),
		.br2(mem2[2]),
		.br3(mem2[3]),
		.br4(mem2[4]),
		.br5(mem2[5]),
		.br6(mem2[6]),
		.br7(mem2[7]),
		.br8(mem2[8]),
		.br9(mem2[9]),
		.br10(mem2[10]),
		.br11(mem2[11]),
		.br12(mem2[12]),
		.br13(mem2[13]),
		.br14(mem2[14]),
		.br15(mem2[15]),
		.br16(mem2[16]),
		.br17(mem2[17]),
		.br18(mem2[18]),
		.br19(mem2[19]),
		.br20(mem2[20]),
		.br21(mem2[21]),
		.br22(mem2[22]),
		.br23(mem2[23]),
		.br24(mem2[24]),
		.br25(mem2[25]),
		.br26(mem2[26]),
		.br27(mem2[27]),
		.br28(mem2[28]),
		.br29(mem2[29]),
		.br30(mem2[30]),
		.br31(mem2[31])
	);

	reg [31:0] mem [0:31];
	wire [31:0] mem2 [0:31];
	wire [31:0] mem3 [0:31];
	integer i, m;


	initial begin
		// Initialize Inputs
		$readmemb("func2.txt", mem);
		a0 = mem[0];
		a1 = mem[1];
		a2 = mem[2];
		a3 = mem[3];
		a4 = mem[4];
		a5 = mem[5];
		a6 = mem[6];
		a7 = mem[7];
		a8 = mem[8];
		a9 = mem[9];
		a10 = mem[10];
		a11 = mem[11];
		a12 = mem[12];
		a13 = mem[13];
		a14 = mem[14];
		a15 = mem[15];
		a16 = mem[16];
		a17 = mem[17];
		a18 = mem[18];
		a19 = mem[19];
		a20 = mem[20];
		a21 = mem[21];
		a22 = mem[22];
		a23 = mem[23];
		a24 = mem[24];
		a25 = mem[25];
		a26 = mem[26];
		a27 = mem[27];
		a28 = mem[28];
		a29 = mem[29]; 
		a30 = mem[30];
		a31 = mem[31];
		clk = 0;
		enable = 0;
		// Wait 100 ns for global reset to finish
		#100;
        //enable = 1;
		// Add stimulus here
		
		
	end
	initial begin
	#1000
		m=$fopen("mem_out2.txt");
      
           $fdisplay(m,"%b ",mem2[0]);
			  $fdisplay(m,"%b ",mem2[2]);
			  $fdisplay(m,"%b ",mem2[4]);
			  $fdisplay(m,"%b ",mem2[6]);
			  $fdisplay(m,"%b ",mem2[8]);
			  $fdisplay(m,"%b ",mem2[10]);
			  $fdisplay(m,"%b ",mem2[12]);
			  $fdisplay(m,"%b ",mem2[14]);
			  $fdisplay(m,"%b ",mem2[16]);
			  $fdisplay(m,"%b ",mem2[18]);
			  $fdisplay(m,"%b ",mem2[20]);
			  $fdisplay(m,"%b ",mem2[22]);
			  $fdisplay(m,"%b ",mem2[24]);
			  $fdisplay(m,"%b ",mem2[26]);
			  $fdisplay(m,"%b ",mem2[28]);
			  $fdisplay(m,"%b ",mem2[30]);
			  $fdisplay(m,"%b ",mem2[1]);
			  $fdisplay(m,"%b ",mem2[3]);
			  $fdisplay(m,"%b ",mem2[5]);
			  $fdisplay(m,"%b ",mem2[7]);
			  $fdisplay(m,"%b ",mem2[9]);
			  $fdisplay(m,"%b ",mem2[11]);
			  $fdisplay(m,"%b ",mem2[13]);
			  $fdisplay(m,"%b ",mem2[15]);
			  $fdisplay(m,"%b ",mem2[17]);
			  $fdisplay(m,"%b ",mem2[19]);
			  $fdisplay(m,"%b ",mem2[21]);
			  $fdisplay(m,"%b ",mem2[23]);
			  $fdisplay(m,"%b ",mem2[25]);
			  $fdisplay(m,"%b ",mem2[27]);
			  $fdisplay(m,"%b ",mem2[29]);
			  $fdisplay(m,"%b ",mem2[31]);
        
      $fclose(m);
	end
	
	/*initial begin
	#2000
		m=$fopen("mem_out5.txt", "a+");
      for(i=1;i<32;i=i+2)
         begin
           $fdisplay(m,"%b ",mem2[i]);
         end
      $fclose(m);
	end*/
	
	always@(*)
	begin
		#5 clk <= ~ clk;
	end
	
      
endmodule

