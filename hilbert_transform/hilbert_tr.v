`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:19 03/04/2014 
// Design Name: 
// Module Name:    fft_sequent 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fft_sequent(
    input signed [31:0] a0,
    input signed [31:0] a1,
    input signed [31:0] a2,
    input signed [31:0] a3,
    input signed [31:0] a4,
    input signed [31:0] a5,
    input signed [31:0] a6,
    input signed [31:0] a7,
	 input signed [31:0] a8,
    input signed [31:0] a9,
    input signed [31:0] a10,
    input signed [31:0] a11,
    input signed [31:0] a12,
    input signed [31:0] a13,
    input signed [31:0] a14,
    input signed [31:0] a15,
	 input signed [31:0] a16,
    input signed [31:0] a17,
    input signed [31:0] a18,
    input signed [31:0] a19,
    input signed [31:0] a20,
    input signed [31:0] a21,
    input signed [31:0] a22,
    input signed [31:0] a23,
	 input signed [31:0] a24,
    input signed [31:0] a25,
    input signed [31:0] a26,
    input signed [31:0] a27,
    input signed [31:0] a28,
    input signed [31:0] a29,
    input signed [31:0] a30,
    input signed [31:0] a31,
	 input clk,
	 //input enable,
    output signed[31:0] br0,
    output signed[31:0] br1,
    output signed[31:0] br2,
    output signed[31:0] br3,
    output signed[31:0] br4,
    output signed[31:0] br5,
    output signed[31:0] br6,
    output signed[31:0] br7,
	 output signed[31:0] br8,
    output signed[31:0] br9,
    output signed[31:0] br10,
    output signed[31:0] br11,
    output signed[31:0] br12,
    output signed[31:0] br13,
    output signed[31:0] br14,
    output signed[31:0] br15,
	 output signed[31:0] br16,
    output signed[31:0] br17,
    output signed[31:0] br18,
    output signed[31:0] br19,
    output signed[31:0] br20,
    output signed[31:0] br21,
    output signed[31:0] br22,
    output signed[31:0] br23,
	 output signed[31:0] br24,
    output signed[31:0] br25,
    output signed[31:0] br26,
    output signed[31:0] br27,
    output signed[31:0] br28,
    output signed[31:0] br29,
    output signed[31:0] br30,
    output signed[31:0] br31,
	 
    output signed[31:0] bi0,
    output signed[31:0] bi1,
    output signed[31:0] bi2,
    output signed[31:0] bi3,
    output signed[31:0] bi4,
    output signed[31:0] bi5,
    output signed[31:0] bi6,
    output signed[31:0] bi7,
	 output signed[31:0] bi8,
    output signed[31:0] bi9,
    output signed[31:0] bi10,
    output signed[31:0] bi11,
    output signed[31:0] bi12,
    output signed[31:0] bi13,
    output signed[31:0] bi14,
    output signed[31:0] bi15,
	 output signed[31:0] bi16,
    output signed[31:0] bi17,
    output signed[31:0] bi18,
    output signed[31:0] bi19,
    output signed[31:0] bi20,
    output signed[31:0] bi21,
    output signed[31:0] bi22,
    output signed[31:0] bi23,
	 output signed[31:0] bi24,
    output signed[31:0] bi25,
    output signed[31:0] bi26,
    output signed[31:0] bi27,
    output signed[31:0] bi28,
    output signed[31:0] bi29,
    output signed[31:0] bi30,
    output signed[31:0] bi31
    );
	 
	 wand ready;

	 reg [3:0] stage = 4'b1;
	 
	 wire signed [15:0] wr0  = 16'b0100000000000000 ;
	 wire signed [15:0] wr1  = 16'b0011111011000101;
	 wire signed [15:0] wr2  = 16'b0011101100100001 ;
	 wire signed [15:0] wr3  = 16'b0011010100110111 ;
	 wire signed [15:0] wr4  = 16'b0010110101000001 ;
	 wire signed [15:0] wr5  = 16'b0010001110001110 ;
	 wire signed [15:0] wr6  = 16'b0001100001111110 ;
	 wire signed [15:0] wr7  = 16'b0000110001111100 ;
	 wire signed [15:0] wr8  = 16'b0000000000000000 ;
	 wire signed [15:0] wr9  = 16'b1111001110000100 ;
	 wire signed [15:0] wr10 = 16'b1110011110000010 ;
	 wire signed [15:0] wr11 = 16'b1101110001110010 ;
	 wire signed [15:0] wr12 = 16'b1101001010111111 ;
	 wire signed [15:0] wr13 = 16'b1100101011001001 ;
	 wire signed [15:0] wr14 = 16'b1100010011011111 ;
	 wire signed [15:0] wr15 = 16'b1100000100111011 ; 
	 
	 wire signed [15:0] wi0  = 16'b0000000000000000 ;
	 wire signed [15:0] wi1  = 16'b1111001110000100 ;
	 wire signed [15:0] wi2  = 16'b1110011110000010 ;
	 wire signed [15:0] wi3  = 16'b1101110001110010 ;
	 wire signed [15:0] wi4  = 16'b1101001010111111 ;
	 wire signed [15:0] wi5  = 16'b1100101011001001 ;
	 wire signed [15:0] wi6  = 16'b1100010011011111 ;
	 wire signed [15:0] wi7  = 16'b1100000100111011 ;
	 wire signed [15:0] wi8  = 16'b1100000000000000 ;
	 wire signed [15:0] wi9  = 16'b1100000100111011 ;
	 wire signed [15:0] wi10 = 16'b1100010011011111 ;
	 wire signed [15:0] wi11 = 16'b1100101011001001 ;
	 wire signed [15:0] wi12 = 16'b1101001010111111 ;
	 wire signed [15:0] wi13 = 16'b1101110001110010 ;
	 wire signed [15:0] wi14 = 16'b1110011110000010 ;
	 wire signed [15:0] wi15 = 16'b1111001110000100 ;
	 
	 // Twiddle Factors for imaginary part start here
	 wire signed [15:0] iwr0  = 16'b0100000000000000 ;
	 wire signed [15:0] iwr1  = 16'b0011111011000101;
	 wire signed [15:0] iwr2  = 16'b0011101100100001 ;
	 wire signed [15:0] iwr3  = 16'b0011010100110111 ;
	 wire signed [15:0] iwr4  = 16'b0010110101000001 ;
	 wire signed [15:0] iwr5  = 16'b0010001110001110 ;
	 wire signed [15:0] iwr6  = 16'b0001100001111110 ;
	 wire signed [15:0] iwr7  = 16'b0000110001111100 ;
	 wire signed [15:0] iwr8  = 16'b0000000000000000 ;
	 wire signed [15:0] iwr9  = 16'b1111001110000100 ;
	 wire signed [15:0] iwr10 = 16'b1110011110000010 ;
	 wire signed [15:0] iwr11 = 16'b1101110001110010 ;
	 wire signed [15:0] iwr12 = 16'b1101001010111111 ;
	 wire signed [15:0] iwr13 = 16'b1100101011001001 ;
	 wire signed [15:0] iwr14 = 16'b1100010011011111 ;
	 wire signed [15:0] iwr15 = 16'b1100000100111011 ; 
	 
	 wire signed [15:0] iwi0  = 16'b0000000000000000 ;
	 wire signed [15:0] iwi1  = 16'b0000110001111100 ;
	 wire signed [15:0] iwi2  = 16'b0001100001111110 ;
	 wire signed [15:0] iwi3  = 16'b0010001110001110 ;
	 wire signed [15:0] iwi4  = 16'b0010110101000001 ;
	 wire signed [15:0] iwi5  = 16'b0011010100110111 ;
	 wire signed [15:0] iwi6  = 16'b0011101100100001 ;
	 wire signed [15:0] iwi7  = 16'b0011111011000101 ;
	 wire signed [15:0] iwi8  = 16'b0100000000000000 ;
	 wire signed [15:0] iwi9  = 16'b0011111011000101 ;
	 wire signed [15:0] iwi10 = 16'b0011101100100001 ;
	 wire signed [15:0] iwi11 = 16'b0011010100110111 ;
	 wire signed [15:0] iwi12 = 16'b0010110101000001 ;
	 wire signed [15:0] iwi13 = 16'b0010001110001110 ;
	 wire signed [15:0] iwi14 = 16'b0001100001111110 ;
	 wire signed [15:0] iwi15 = 16'b0000110001111100 ;
	 
	 //Twiddle Factors for Imaginary Part End Here
	 
	 reg signed [31:0] tr0;
	 reg signed [31:0] tr1;
	 reg signed [31:0] tr2;
	 reg signed [31:0] tr3;
	 reg signed [31:0] tr4;
	 reg signed [31:0] tr5;
	 reg signed [31:0] tr6;
	 reg signed [31:0] tr7;
	 reg signed [31:0] tr8;
	 reg signed [31:0] tr9;
	 reg signed [31:0] tr10;
	 reg signed [31:0] tr11;
	 reg signed [31:0] tr12;
	 reg signed [31:0] tr13;
	 reg signed [31:0] tr14;
	 reg signed [31:0] tr15;
	 reg signed [31:0] tr16;
	 reg signed [31:0] tr17;
	 reg signed [31:0] tr18;
	 reg signed [31:0] tr19;
	 reg signed [31:0] tr20;
	 reg signed [31:0] tr21;
	 reg signed [31:0] tr22;
	 reg signed [31:0] tr23;
	 reg signed [31:0] tr24;
	 reg signed [31:0] tr25;
	 reg signed [31:0] tr26;
	 reg signed [31:0] tr27;
	 reg signed [31:0] tr28;
	 reg signed [31:0] tr29;
	 reg signed [31:0] tr30;
	 reg signed [31:0] tr31;
	 
	 
	 reg signed [31:0] ti0;
	 reg signed [31:0] ti1;
	 reg signed [31:0] ti2;
	 reg signed [31:0] ti3;
	 reg signed [31:0] ti4;
	 reg signed [31:0] ti5;
	 reg signed [31:0] ti6;
	 reg signed [31:0] ti7;
	 reg signed [31:0] ti8;
	 reg signed [31:0] ti9;
	 reg signed [31:0] ti10;
	 reg signed [31:0] ti11;
	 reg signed [31:0] ti12;
	 reg signed [31:0] ti13;
	 reg signed [31:0] ti14;
	 reg signed [31:0] ti15;
	 reg signed [31:0] ti16;
	 reg signed [31:0] ti17;
	 reg signed [31:0] ti18;
	 reg signed [31:0] ti19;
	 reg signed [31:0] ti20;
	 reg signed [31:0] ti21;
	 reg signed [31:0] ti22;
	 reg signed [31:0] ti23;
	 reg signed [31:0] ti24;
	 reg signed [31:0] ti25;
	 reg signed [31:0] ti26;
	 reg signed [31:0] ti27;
	 reg signed [31:0] ti28;
	 reg signed [31:0] ti29;
	 reg signed [31:0] ti30;
	 reg signed [31:0] ti31;
	 	 
	 reg signed [15:0] win0_r;
	 reg signed [15:0] win1_r;
	 reg signed [15:0] win2_r;
	 reg signed [15:0] win3_r;
	 reg signed [15:0] win4_r;
	 reg signed [15:0] win5_r;
	 reg signed [15:0] win6_r;
	 reg signed [15:0] win7_r;
	 reg signed [15:0] win8_r;
	 reg signed [15:0] win9_r;
	 reg signed [15:0] win10_r;
	 reg signed [15:0] win11_r;
	 reg signed [15:0] win12_r;
	 reg signed [15:0] win13_r;
	 reg signed [15:0] win14_r;
	 reg signed [15:0] win15_r;
	 
	 reg signed [15:0] win0_i;
	 reg signed [15:0] win1_i;
	 reg signed [15:0] win2_i;
	 reg signed [15:0] win3_i;
	 reg signed [15:0] win4_i;
	 reg signed [15:0] win5_i;
	 reg signed [15:0] win6_i;
	 reg signed [15:0] win7_i;
	 reg signed [15:0] win8_i;
	 reg signed [15:0] win9_i;
	 reg signed [15:0] win10_i;
	 reg signed [15:0] win11_i;
	 reg signed [15:0] win12_i;
	 reg signed [15:0] win13_i;
	 reg signed [15:0] win14_i;
	 reg signed [15:0] win15_i;
	 wire signed one;
	 assign one = 32'b1;
	 reg enable = 0;
	 
	 bffly z0 (.ready(ready),.clk(clk), .enable(enable), .xa_r(tr0),  .xa_i(ti0),  .xb_r(tr1), .xb_i(ti1), .w_r(win0_r), .w_i(win0_i),  .ya_r(br0), .ya_i( bi0),  .yb_r( br1),  .yb_i( bi1));
	 bffly z1 (.ready(ready),.clk(clk), .enable(enable), .xa_r(tr2),  .xa_i(ti2),  .xb_r(tr3), .xb_i(ti3), .w_r(win1_r), .w_i(win1_i),  .ya_r(br2), .ya_i( bi2),  .yb_r( br3),  .yb_i( bi3));
	 bffly z2 (.ready(ready),.clk(clk), .enable(enable), .xa_r(tr4),  .xa_i(ti4),  .xb_r(tr5), .xb_i(ti5), .w_r(win2_r), .w_i(win2_i),  .ya_r(br4), .ya_i( bi4),  .yb_r( br5),  .yb_i( bi5));
	 bffly z3 (.ready(ready),.clk(clk), .enable(enable), .xa_r(tr6),  .xa_i(ti6),  .xb_r(tr7), .xb_i(ti7), .w_r(win3_r), .w_i(win3_i),  .ya_r(br6), .ya_i( bi6),  .yb_r( br7),  .yb_i( bi7));
	 bffly z4 (.ready(ready),.clk(clk), .enable(enable), .xa_r(tr8),  .xa_i(ti8),  .xb_r(tr9), .xb_i(ti9), .w_r(win4_r), .w_i(win4_i),  .ya_r(br8), .ya_i( bi8),  .yb_r( br9),  .yb_i( bi9));
	 bffly z5 (.ready(ready),.clk(clk), .enable(enable), .xa_r(tr10),  .xa_i(ti10),  .xb_r(tr11), .xb_i(ti11), .w_r(win5_r), .w_i(win5_i), .ya_r(br10), .ya_i( bi10), .yb_r( br11), .yb_i( bi11));
	 bffly z6 (.ready(ready),.clk(clk), .enable(enable), .xa_r(tr12),  .xa_i(ti12),  .xb_r(tr13), .xb_i(ti13), .w_r(win6_r), .w_i(win6_i), .ya_r(br12), .ya_i( bi12), .yb_r( br13), .yb_i( bi13));
	 bffly z7 (.ready(ready),.clk(clk), .enable(enable), .xa_r(tr14),  .xa_i(ti14),  .xb_r(tr15), .xb_i(ti15), .w_r(win7_r), .w_i(win7_i), .ya_r(br14), .ya_i( bi14), .yb_r( br15), .yb_i( bi15));
	 bffly z8 (.ready(ready),.clk(clk), .enable(enable), .xa_r(tr16),  .xa_i(ti16),  .xb_r(tr17), .xb_i(ti17), .w_r(win8_r), .w_i(win8_i), .ya_r(br16), .ya_i( bi16), .yb_r( br17), .yb_i( bi17));
	 bffly z9 (.ready(ready),.clk(clk), .enable(enable), .xa_r(tr18),  .xa_i(ti18),  .xb_r(tr19), .xb_i(ti19), .w_r(win9_r), .w_i(win9_i), .ya_r(br18), .ya_i( bi18), .yb_r( br19), .yb_i( bi19));
	 bffly z10(.ready(ready),.clk(clk), .enable(enable), .xa_r(tr20), .xa_i(ti20), .xb_r(tr21), .xb_i(ti21), .w_r(win10_r), .w_i(win10_i), .ya_r(br20), .ya_i( bi20), .yb_r( br21), .yb_i( bi21));
	 bffly z11(.ready(ready),.clk(clk), .enable(enable), .xa_r(tr22), .xa_i(ti22), .xb_r(tr23), .xb_i(ti23), .w_r(win11_r), .w_i(win11_i), .ya_r(br22), .ya_i( bi22), .yb_r( br23), .yb_i( bi23));
	 bffly z12(.ready(ready),.clk(clk), .enable(enable), .xa_r(tr24), .xa_i(ti24), .xb_r(tr25), .xb_i(ti25), .w_r(win12_r), .w_i(win12_i), .ya_r(br24), .ya_i( bi24), .yb_r( br25), .yb_i( bi25));
	 bffly z13(.ready(ready),.clk(clk), .enable(enable), .xa_r(tr26), .xa_i(ti26), .xb_r(tr27), .xb_i(ti27), .w_r(win13_r), .w_i(win13_i), .ya_r(br26), .ya_i( bi26), .yb_r( br27), .yb_i( bi27));
	 bffly z14(.ready(ready),.clk(clk), .enable(enable), .xa_r(tr28), .xa_i(ti28), .xb_r(tr29), .xb_i(ti29), .w_r(win14_r), .w_i(win14_i), .ya_r(br28), .ya_i( bi28), .yb_r( br29), .yb_i( bi29));
	 bffly z15(.ready(ready),.clk(clk), .enable(enable), .xa_r(tr30), .xa_i(ti30), .xb_r(tr31), .xb_i(ti31), .w_r(win15_r), .w_i(win15_i), .ya_r(br30), .ya_i( bi30), .yb_r( br31), .yb_i( bi31));
	 
	 
	 always@(posedge clk)
	begin
		 enable <= ~enable;
	end
	
	 always @(posedge clk)
	 begin 
		case(stage)
		
		4'b1:						//STAGE 1
			begin
				tr0 <= a0;
				tr1 <= a16;
				
				tr2 <= a8;
				tr3 <= a24;
				
				tr4 <= a4;
				tr5 <= a20;
				
				tr6 <= a12;
				tr7 <= a28;
				
				tr8 <= a2;
				tr9 <= a18;
				
				tr10 <= a10;
				tr11 <= a26;
				
				tr12 <= a6;
				tr13 <= a22;
				
				tr14 <= a14;
				tr15 <= a30;
				
				tr16 <= a1;
				tr17 <= a17;
				
				tr18 <= a9;
				tr19 <= a25;
				
				tr20 <= a5;
				tr21 <= a21;
				
				tr22 <= a13;
				tr23 <= a29;
				
				tr24 <= a3;
				tr25 <= a19;
				
				tr26 <= a11;
				tr27 <= a27;
				
				tr28 <= a7;
				tr29 <= a23;
				
				tr30 <= a15;
				tr31 <= a31;
				
				ti0 <= 32'b0;
				ti1 <= 32'b0;
				ti2 <= 32'b0;
				ti3 <= 32'b0;
				ti4 <= 32'b0;
				ti5 <= 32'b0;
				ti6 <= 32'b0;
				ti7 <= 32'b0;
				ti8 <= 32'b0;
				ti9 <= 32'b0;
				ti10 <= 32'b0;
				ti11 <= 32'b0;
				ti12 <= 32'b0;
				ti13 <= 32'b0;
				ti14 <= 32'b0;
				ti15 <= 32'b0;
				ti16 <= 32'b0;
				ti17 <= 32'b0;
				ti18 <= 32'b0;
				ti19 <= 32'b0;
				ti20 <= 32'b0;
				ti21 <= 32'b0;
				ti22 <= 32'b0;
				ti23 <= 32'b0;
				ti24 <= 32'b0;
				ti25 <= 32'b0;
				ti26 <= 32'b0;
				ti27 <= 32'b0;
				ti28 <= 32'b0;
				ti29 <= 32'b0;
				ti30 <= 32'b0;
				ti31 <= 32'b0;
				
				
				win0_r <= wr0;
				win1_r <= wr0;
				win2_r <= wr0;
				win3_r <= wr0;
				win4_r <= wr0;
				win5_r <= wr0;
				win6_r <= wr0;
				win7_r <= wr0;
				win8_r <= wr0;
				win9_r <= wr0;
				win10_r <= wr0;
				win11_r <= wr0;
				win12_r <= wr0;
				win13_r <= wr0;
				win14_r <= wr0;
				win15_r <= wr0;
	 
				win0_i <= wi0;
				win1_i <= wi0;
				win2_i <= wi0;
				win3_i <= wi0;
				win4_i <= wi0;
				win5_i <= wi0;
				win6_i <= wi0;
				win7_i <= wi0;
				win8_i <= wi0;
				win9_i <= wi0;
				win10_i <= wi0;
				win11_i <= wi0;
				win12_i <= wi0;
				win13_i <= wi0;
				win14_i <= wi0;
				win15_i <= wi0;				
				
				stage<= stage+4'b1;
			end
		
		4'b10:					//STAGE 2
			begin
			  if (ready)
				begin
				tr0 <= br0;
				tr1 <= br2;
				
				tr2 <= br1;
				tr3 <= br3;
				
				tr4 <= br4;
				tr5 <= br6;
				
				tr6 <= br5;
				tr7 <= br7;
				
				tr8 <= br8;
				tr9 <= br10;
				
				tr10 <= br9;
				tr11 <= br11;
				
				tr12 <= br12;
				tr13 <= br14;
				
				tr14 <= br13;
				tr15 <= br15;
				
				tr16 <= br16;
				tr17 <= br18;
				
				tr18 <= br17;
				tr19 <= br19;
				
				tr20 <= br20;
				tr21 <= br22;
				
				tr22 <= br21;
				tr23 <= br23;
				
				tr24 <= br24;
				tr25 <= br26;
				
				tr26 <= br25;
				tr27 <= br27;
				
				tr28 <= br28;
				tr29 <= br30;
				
				tr30 <= br29;
				tr31 <= br31;
				
				
				ti0 <= bi0;
				ti1 <= bi2;
				
				ti2 <= bi1;
				ti3 <= bi3;
				
				ti4 <= bi4;
				ti5 <= bi6;
				
				ti6 <= bi5;
				ti7 <= bi7;
				
				ti8 <= bi8;
				ti9 <= bi10;
				
				ti10 <= bi9;
				ti11 <= bi11;
				
				ti12 <= bi12;
				ti13 <= bi14;
				
				ti14 <= bi13;
				ti15 <= bi15;
				
				ti16 <= bi16;
				ti17 <= bi18;
				
				ti18 <= bi17;
				ti19 <= bi19;
				
				ti20 <= bi20;
				ti21 <= bi22;
				
				ti22 <= bi21;
				ti23 <= bi23;
				
				ti24 <= bi24;
				ti25 <= bi26;
				
				ti26 <= bi25;
				ti27 <= bi27;
				
				ti28 <= bi28;
				ti29 <= bi30;
				
				ti30 <= bi29;
				ti31 <= bi31;
				
				
				win0_r <= wr0;
				win1_r <= wr8;
				
				win2_r <= wr0;
				win3_r <= wr8;
				
				win4_r <= wr0;
				win5_r <= wr8;
				
				win6_r <= wr0;
				win7_r <= wr8;
				
				win8_r <= wr0;
				win9_r <= wr8;
				
				win10_r <= wr0;
				win11_r <= wr8;
				
				win12_r <= wr0;
				win13_r <= wr8;
				
				win14_r <= wr0;
				win15_r <= wr8;
	 
				win0_i <= wi0;
				win1_i <= wi8;
				
				win2_i <= wi0;
				win3_i <= wi8;
				
				win4_i <= wi0;
				win5_i <= wi8;
				
				win6_i <= wi0;
				win7_i <= wi8;
				
				win8_i <= wi0;
				win9_i <= wi8;
				
				win10_i <= wi0;
				win11_i <= wi8;
				
				win12_i <= wi0;
				win13_i <= wi8;
				
				win14_i <= wi0;
				win15_i <= wi8;				
				
				stage<= stage+4'b1;
			  end
			end
		
		4'b11:					//STAGE 3
			begin
				if (ready)
				begin
				tr0 <= br0;
				tr1 <= br4;
				
				tr2 <= br2;
				tr3 <= br6;
				
				tr4 <= br1;
				tr5 <= br5;
				
				tr6 <= br3;
				tr7 <= br7;
				
				tr8 <= br8;
				tr9 <= br12;
				
				tr10 <= br10;
				tr11 <= br14;
				
				tr12 <= br9;
				tr13 <= br13;
				
				tr14 <= br11;
				tr15 <= br15;
				
				tr16 <= br16;
				tr17 <= br20;
				
				tr18 <= br18;
				tr19 <= br22;
				
				tr20 <= br17;
				tr21 <= br21;
				
				tr22 <= br19;
				tr23 <= br23;
				
				tr24 <= br24;
				tr25 <= br28;
				
				tr26 <= br26;
				tr27 <= br30;
				
				tr28 <= br25;
				tr29 <= br29;
				
				tr30 <= br27;
				tr31 <= br31;
				///////
				ti0 <= bi0;
				ti1 <= bi4;
				
				ti2 <= bi2;
				ti3 <= bi6;
				
				ti4 <= bi1;
				ti5 <= bi5;
				
				ti6 <= bi3;
				ti7 <= bi7;
				
				ti8 <= bi8;
				ti9 <= bi12;
				
				ti10 <= bi10;
				ti11 <= bi14;
				
				ti12 <= bi9;
				ti13 <= bi13;
				
				ti14 <= bi11;
				ti15 <= bi15;
				
				ti16 <= bi16;
				ti17 <= bi20;
				
				ti18 <= bi18;
				ti19 <= bi22;
				
				ti20 <= bi17;
				ti21 <= bi21;
				
				ti22 <= bi19;
				ti23 <= bi23;
				
				ti24 <= bi24;
				ti25 <= bi28;
				
				ti26 <= bi26;
				ti27 <= bi30;
				
				ti28 <= bi25;
				ti29 <= bi29;
				
				ti30 <= bi27;
				ti31 <= bi31;				
				
				win0_r <= wr0;
				win1_r <= wr4;
				win2_r <= wr8;
				win3_r <= wr12;
				win4_r <= wr0;
				win5_r <= wr4;
				win6_r <= wr8;
				win7_r <= wr12;
				win8_r <= wr0;
				win9_r <= wr4;
				win10_r <= wr8;
				win11_r <= wr12;
				win12_r <= wr0;
				win13_r <= wr4;
				win14_r <= wr8;
				win15_r <= wr12;
	 
				win0_i <= wi0;
				win1_i <= wi4;
				win2_i <= wi8;
				win3_i <= wi12;
				win4_i <= wi0;
				win5_i <= wi4;
				win6_i <= wi8;
				win7_i <= wi12;
				win8_i <= wi0;
				win9_i <= wi4;
				win10_i <= wi8;
				win11_i <= wi12;
				win12_i <= wi0;
				win13_i <= wi4;
				win14_i <= wi8;
				win15_i <= wi12;				
				
				stage<= stage+4'b1;
				end
			end	

		4'b100:					//STAGE 4
			begin
				if (ready)
				begin
				tr0 <= br0;
				tr1 <= br8;
				
				tr2 <= br2;
				tr3 <= br10;
				
				tr4 <= br4;
				tr5 <= br12;
				
				tr6 <= br6;
				tr7 <= br14;
				
				tr8 <= br1;
				tr9 <= br9;////
				
				tr10 <= br3;
				tr11 <= br11;
				
				tr12 <= br5;
				tr13 <= br13;
				
				tr14 <= br7;
				tr15 <= br15;
				
				tr16 <= br16;
				tr17 <= br24;
				
				tr18 <= br18;
				tr19 <= br26;
				
				tr20 <= br20;
				tr21 <= br28;
				
				tr22 <= br22;
				tr23 <= br30;
				
				tr24 <= br17;
				tr25 <= br25;
				
				tr26 <= br19;
				tr27 <= br27;
				
				tr28 <= br21;
				tr29 <= br29;
				
				tr30 <= br23;
				tr31 <= br31;
				
				ti0 <= bi0;
				ti1 <= bi8;
				
				ti2 <= bi2;
				ti3 <= bi10;
				
				ti4 <= bi4;
				ti5 <= bi12;
				
				ti6 <= bi6;
				ti7 <= bi14;
				
				ti8 <= bi1;
				ti9 <= bi9;
				
				ti10 <= bi3;
				ti11 <= bi11;
				
				ti12 <= bi5;
				ti13 <= bi13;
				
				ti14 <= bi7;
				ti15 <= bi15;
				
				ti16 <= bi16;
				ti17 <= bi24;
				
				ti18 <= bi18;
				ti19 <= bi26;
				
				ti20 <= bi20;
				ti21 <= bi28;
				
				ti22 <= bi22;
				ti23 <= bi30;
				
				ti24 <= bi17;
				ti25 <= bi25;
				
				ti26 <= bi19;
				ti27 <= bi27;
				
				ti28 <= bi21;
				ti29 <= bi29;
				
				ti30 <= bi23;
				ti31 <= bi31;
				
				win0_r <= wr0;
				win1_r <= wr2;
				win2_r <= wr4;
				win3_r <= wr6;
				win4_r <= wr8;
				win5_r <= wr10;
				win6_r <= wr12;
				win7_r <= wr14;
				win8_r <= wr0;
				win9_r <= wr2;
				win10_r <= wr4;
				win11_r <= wr6;
				win12_r <= wr8;
				win13_r <= wr10;
				win14_r <= wr12;
				win15_r <= wr14;
	 
				win0_i <= wi0;
				win1_i <= wi2;
				win2_i <= wi4;
				win3_i <= wi6;
				win4_i <= wi8;
				win5_i <= wi10;
				win6_i <= wi12;
				win7_i <= wi14;
				win8_i <= wi0;
				win9_i <= wi2;
				win10_i <= wi4;
				win11_i <= wi6;
				win12_i <= wi8;
				win13_i <= wi10;
				win14_i <= wi12;
				win15_i <= wi14;				
				
				stage<= stage+4'b1;
				end
			end
			
		4'b101:					//STAGE 5
			begin
				if (ready)
				begin
				tr0 <= br0;
				tr1 <= br16;
				
				tr2 <= br2;
				tr3 <= br18;
				
				tr4 <= br4;
				tr5 <= br20;
				
				tr6 <= br6;
				tr7 <= br22;
				
				tr8 <= br8;
				tr9 <= br24;
				
				tr10 <= br10;
				tr11 <= br26;
				
				tr12 <= br12;
				tr13 <= br28;
				
				tr14 <= br14;
				tr15 <= br30;
				
				tr16 <= br1;
				tr17 <= br17;
				
				tr18 <= br3;
				tr19 <= br19;
				
				tr20 <= br5;
				tr21 <= br21;
				
				tr22 <= br7;
				tr23 <= br23;
				
				tr24 <= br9;
				tr25 <= br25;
				
				tr26 <= br11;
				tr27 <= br27;
				
				tr28 <= br13;
				tr29 <= br29;
				
				tr30 <= br15;
				tr31 <= br31;
				
				
				ti0 <= bi0;
				ti1 <= bi16;
				
				ti2 <= bi2;
				ti3 <= bi18;
				
				ti4 <= bi4;
				ti5 <= bi20;
				
				ti6 <= bi6;
				ti7 <= bi22;
				
				ti8 <= bi8;
				ti9 <= bi24;
				
				ti10 <= bi10;
				ti11 <= bi26;
				
				ti12 <= bi12;
				ti13 <= bi28;
				
				ti14 <= bi14;
				ti15 <= bi30;
				
				ti16 <= bi1;
				ti17 <= bi17;
				
				ti18 <= bi3;
				ti19 <= bi19;
				
				ti20 <= bi5;
				ti21 <= bi21;
				
				ti22 <= bi7;
				ti23 <= bi23;
				
				ti24 <= bi9;
				ti25 <= bi25;
				
				ti26 <= bi11;
				ti27 <= bi27;
				
				ti28 <= bi13;
				ti29 <= bi29;
				
				ti30 <= bi15;
				ti31 <= bi31;
				
				win0_r <= wr0;
				win1_r <= wr1;
				win2_r <= wr2;
				win3_r <= wr3;
				win4_r <= wr4;
				win5_r <= wr5;
				win6_r <= wr6;
				win7_r <= wr7;
				win8_r <= wr8;
				win9_r <= wr9;
				win10_r <= wr10;
				win11_r <= wr11;
				win12_r <= wr12;
				win13_r <= wr13;
				win14_r <= wr14;
				win15_r <= wr15;
	 
				win0_i <= wi0;
				win1_i <= wi1;
				win2_i <= wi2;
				win3_i <= wi3;
				win4_i <= wi4;
				win5_i <= wi5;
				win6_i <= wi6;
				win7_i <= wi7;
				win8_i <= wi8;
				win9_i <= wi9;
				win10_i <= wi10;
				win11_i <= wi11;
				win12_i <= wi12;
				win13_i <= wi13;
				win14_i <= wi14;
				win15_i <= wi15;				
				
				stage<= stage+4'b1;
				end
			end
			
		4'b110:					//STAGE 6
			begin
				if (ready)
				begin
				
				
				tr0 <= 0;
				tr1 <= 0;
				
				tr2 <= (bi16) >>>5;
				tr3 <= ((~bi17) + one)>>>5;
				
				tr4 <= (bi8)>>>5;
				tr5 <= (~(bi9) + one)>>>5;
				
				tr6 <= (bi24)>>>5;
				tr7 <= (~(bi25)+ one)>>>5;
				
				tr8 <= (bi4)>>>5;
				tr9 <= (~(bi5) + one)>>>5;
				
				tr10 <= (bi20)>>>5;
				tr11 <= (~bi21 + one)>>>5;
				
				tr12 <= (bi12)>>>5;
				tr13 <= (~(bi13) + one)>>>5;
				
				tr14 <= (bi28)>>>5;
				tr15 <= (~(bi29) + one)>>>5;
				
				tr16 <= (bi2)>>>5;
				tr17 <= (~(bi3) + one)>>>5;
				
				tr18 <= (bi18)>>>5;
				tr19 <= (~(bi19) + one)>>>5;
				
				tr20 <= (bi10)>>>5;
				tr21 <= (~(bi11)  + one)>>>5;
				
				tr22 <= (bi26)>>>5;
				tr23 <= (~(bi27) + one)>>>5;
				
				tr24 <= (bi6)>>>5;
				tr25 <= (~(bi7) + one)>>>5;
				
				tr26 <= (bi22)>>>5;
				tr27 <= (~(bi23) + one)>>>5;
				
				tr28 <= (bi14)>>>5;
				tr29 <= (~(bi15) + one)>>>5;
				
				tr30 <= (bi30)>>>5;
				tr31 <= (~(bi31) + one)>>>5;
				///
				
				ti0 <= 0;
				ti1 <= 0;
				
				ti2 <= (~(br16) + one)>>>5;
				ti3 <= (br17)>>>5;
				
				ti4 <= (~(br8) + one)>>>5;
				ti5 <= (br9)>>>5 ;
				
				ti6 <= (~(br24) + one)>>>5;
				ti7 <= (br25)>>>5;
				
				ti8 <= (~(br4) + one)>>>5;
				ti9 <= (br5)>>>5;
				
				ti10 <= (~(br20) + one)>>>5;
				ti11 <=  (br21)>>>5;
				
				ti12 <= (~(br12) + one)>>>5;
				ti13 <= (br13)>>>5;
				
				ti14 <= (~(br28) + one)>>>5;
				ti15 <= br29;
				
				ti16 <= (~(br2) + one)>>>5;
				ti17 <= (br3)>>>5;
				
				ti18 <= (~(br18) + one)>>>5;
				ti19 <= (br19)>>>5;
				
				ti20 <= (~(br10) + one)>>>5;
				ti21 <= (br11)>>>5;
				
				ti22 <= (~(br26) + one)>>>5;
				ti23 <= (br27)>>>5;
				
				ti24 <= (~(br6) + one)>>>5;
				ti25 <= (br7)>>>5;
				
				ti26 <= (~(br22) + one)>>>5;
				ti27 <= (br23)>>>5;
				
				ti28 <= (~(br14) + one)>>>5;
				ti29 <= (br15)>>>5;
				
				ti30 <= (~(br30) + one)>>>5;
				ti31 <= (br31)>>>5;
				/*
				
				tr0 <= (br0)>>>5;
				tr1 <= (br1)>>>5;
				
				tr2 <= (br16) >>>5;
				tr3 <= (br17)>>>5;
				
				tr4 <= (br8)>>>5;
				tr5 <= (br9)>>>5;
				
				tr6 <= (br24)>>>5;
				tr7 <= (br25)>>>5;
				
				tr8 <= (br4)>>>5;
				tr9 <= (br5)>>>5;
				
				tr10 <= (br20)>>>5;
				tr11 <= (br21)>>>5;
				
				tr12 <= (br12)>>>5;
				tr13 <= (br13)>>>5;
				
				tr14 <= (br28)>>>5;
				tr15 <= (br29)>>>5;
				
				tr16 <= (br2)>>>5;
				tr17 <= (br3)>>>5;
				
				tr18 <= (br18)>>>5;
				tr19 <= (br19)>>>5;
				
				tr20 <= (br10)>>>5;
				tr21 <= (br11)>>>5;
				
				tr22 <= (br26)>>>5;
				tr23 <= (br27)>>>5;
				
				tr24 <= (br6)>>>5;
				tr25 <= (br7)>>>5;
				
				tr26 <= (br22)>>>5;
				tr27 <= (br23)>>>5;
				
				tr28 <= (br14)>>>5;
				tr29 <= (br15)>>>5;
				
				tr30 <= (br30)>>>5;
				tr31 <= (br31)>>>5;
				
				//
				ti0 <= (bi0)>>>5;
				ti1 <= (bi1)>>>5;
				
				ti2 <= (bi16) >>>5;
				ti3 <= (bi17)>>>5;
				
				ti4 <= (bi8)>>>5;
				ti5 <= (bi9)>>>5;
				
				ti6 <= (bi24)>>>5;
				ti7 <= (bi25)>>>5;
				
				ti8 <= (bi4)>>>5;
				ti9 <= (bi5)>>>5;
				
				ti10 <= (bi20)>>>5;
				ti11 <= (bi21)>>>5;
				
				ti12 <= (bi12)>>>5;
				ti13 <= (bi13)>>>5;
				
				ti14 <= (bi28)>>>5;
				ti15 <= (bi29)>>>5;
				
				ti16 <= (bi2)>>>5;
				ti17 <= (bi3)>>>5;
				
				ti18 <= (bi18)>>>5;
				ti19 <= (bi19)>>>5;
				
				ti20 <= (bi10)>>>5;
				ti21 <= (bi11)>>>5;
				
				ti22 <= (bi26)>>>5;
				ti23 <= (bi27)>>>5;
				
				ti24 <= (bi6)>>>5;
				ti25 <= (bi7)>>>5;
				
				ti26 <= (bi22)>>>5;
				ti27 <= (bi23)>>>5;
				
				ti28 <= (bi14)>>>5;
				ti29 <= (bi15)>>>5;
				
				ti30 <= (bi30)>>>5;
				ti31 <= (bi31)>>>5;
				*/
				
				win0_r <= iwr0;
				win1_r <= iwr0;
				win2_r <= iwr0;
				win3_r <= iwr0;
				win4_r <= iwr0;
				win5_r <= iwr0;
				win6_r <= iwr0;
				win7_r <= iwr0;
				win8_r <= iwr0;
				win9_r <= iwr0;
				win10_r <= iwr0;
				win11_r <= iwr0;
				win12_r <= iwr0;
				win13_r <= iwr0;
				win14_r <= iwr0;
				win15_r <= iwr0;
	 
				win0_i <= iwi0;
				win1_i <= iwi0;
				win2_i <= iwi0;
				win3_i <= iwi0;
				win4_i <= iwi0;
				win5_i <= iwi0;
				win6_i <= iwi0;
				win7_i <= iwi0;
				win8_i <= iwi0;
				win9_i <= iwi0;
				win10_i <= iwi0;
				win11_i <= iwi0;
				win12_i <= iwi0;
				win13_i <= iwi0;
				win14_i <= iwi0;
				win15_i <= iwi0;				
				
				stage<= stage+4'b1;
				end
			end
			
			4'b111:					//STAGE 7
			begin
			  if (ready)
				begin
				tr0 <= br0;
				tr1 <= br2;
				tr2 <= br1;
				tr3 <= br3;
				tr4 <= br4;
				tr5 <= br6;
				tr6 <= br5;
				tr7 <= br7;
				tr8 <= br8;
				tr9 <= br10;
				tr10 <= br9;
				tr11 <= br11;
				tr12 <= br12;
				tr13 <= br14;
				tr14 <= br13;
				tr15 <= br15;
				tr16 <= br16;
				tr17 <= br18;
				tr18 <= br17;
				tr19 <= br19;
				tr20 <= br20;
				tr21 <= br22;
				tr22 <= br21;
				tr23 <= br23;
				tr24 <= br24;
				tr25 <= br26;
				tr26 <= br25;
				tr27 <= br27;
				tr28 <= br28;
				tr29 <= br30;
				tr30 <= br29;
				tr31 <= br31;
				
				
				ti0 <= bi0;
				ti1 <= bi2;
				ti2 <= bi1;
				ti3 <= bi3;
				ti4 <= bi4;
				ti5 <= bi6;
				ti6 <= bi5;
				ti7 <= bi7;
				ti8 <= bi8;
				ti9 <= bi10;
				ti10 <= bi9;
				ti11 <= bi11;
				ti12 <= bi12;
				ti13 <= bi14;
				ti14 <= bi13;
				ti15 <= bi15;
				ti16 <= bi16;
				ti17 <= bi18;
				ti18 <= bi17;
				ti19 <= bi19;
				ti20 <= bi20;
				ti21 <= bi22;
				ti22 <= bi21;
				ti23 <= bi23;
				ti24 <= bi24;
				ti25 <= bi26;
				ti26 <= bi25;
				ti27 <= bi27;
				ti28 <= bi28;
				ti29 <= bi30;
				ti30 <= bi29;
				ti31 <= bi31;
				
				
				win0_r <= iwr0;
				win1_r <= iwr8;
				win2_r <= iwr0;
				win3_r <= iwr8;
				win4_r <= iwr0;
				win5_r <= iwr8;
				win6_r <= iwr0;
				win7_r <= iwr8;
				win8_r <= iwr0;
				win9_r <= iwr8;
				win10_r <= iwr0;
				win11_r <= iwr8;
				win12_r <= iwr0;
				win13_r <= iwr8;
				win14_r <= iwr0;
				win15_r <= iwr8;
	 
				win0_i <= iwi0;
				win1_i <= iwi8;
				win2_i <= iwi0;
				win3_i <= iwi8;
				win4_i <= iwi0;
				win5_i <= iwi8;
				win6_i <= iwi0;
				win7_i <= iwi8;
				win8_i <= iwi0;
				win9_i <= iwi8;
				win10_i <= iwi0;
				win11_i <= iwi8;
				win12_i <= iwi0;
				win13_i <= iwi8;
				win14_i <= iwi0;
				win15_i <= iwi8;				
				
				stage<= stage+4'b1;
				
				$display("tr4 = %b", tr4);

			  end
			end
		
		4'b1000:					//STAGE 8
			begin
				if (ready)
				begin
				tr0 <= br0;
				tr1 <= br4;
				
				tr2 <= br2;
				tr3 <= br6;
				
				tr4 <= br1;
				tr5 <= br5;
				
				tr6 <= br3;
				tr7 <= br7;
				
				tr8 <= br8;
				tr9 <= br12;
				
				tr10 <= br10;
				tr11 <= br14;
				
				tr12 <= br9;
				tr13 <= br13;
				
				tr14 <= br11;
				tr15 <= br15;
				
				tr16 <= br16;
				tr17 <= br20;
				
				tr18 <= br18;
				tr19 <= br22;
				
				tr20 <= br17;
				tr21 <= br21;
				
				tr22 <= br19;
				tr23 <= br23;
				
				tr24 <= br24;
				tr25 <= br28;
				
				tr26 <= br26;
				tr27 <= br30;
				
				tr28 <= br25;
				tr29 <= br29;
				
				tr30 <= br27;
				tr31 <= br31;
				///////
				ti0 <= bi0;
				ti1 <= bi4;
				
				ti2 <= bi2;
				ti3 <= bi6;
				
				ti4 <= bi1;
				ti5 <= bi5;
				
				ti6 <= bi3;
				ti7 <= bi7;
				
				ti8 <= bi8;
				ti9 <= bi12;
				
				ti10 <= bi10;
				ti11 <= bi14;
				
				ti12 <= bi9;
				ti13 <= bi13;
				
				ti14 <= bi11;
				ti15 <= bi15;
				
				ti16 <= bi16;
				ti17 <= bi20;
				
				ti18 <= bi18;
				ti19 <= bi22;
				
				ti20 <= bi17;
				ti21 <= bi21;
				
				ti22 <= bi19;
				ti23 <= bi23;
				
				ti24 <= bi24;
				ti25 <= bi28;
				
				ti26 <= bi26;
				ti27 <= bi30;
				
				ti28 <= bi25;
				ti29 <= bi29;
				
				ti30 <= bi27;
				ti31 <= bi31;				
				
				win0_r <= iwr0;
				win1_r <= iwr4;
				win2_r <= iwr8;
				win3_r <= iwr12;
				win4_r <= iwr0;
				win5_r <= iwr4;
				win6_r <= iwr8;
				win7_r <= iwr12;
				win8_r <= iwr0;
				win9_r <= iwr4;
				win10_r <= iwr8;
				win11_r <= iwr12;
				win12_r <= iwr0;
				win13_r <= iwr4;
				win14_r <= iwr8;
				win15_r <= iwr12;
	 
				win0_i <= iwi0;
				win1_i <= iwi4;
				win2_i <= iwi8;
				win3_i <= iwi12;
				win4_i <= iwi0;
				win5_i <= iwi4;
				win6_i <= iwi8;
				win7_i <= iwi12;
				win8_i <= iwi0;
				win9_i <= iwi4;
				win10_i <= iwi8;
				win11_i <= iwi12;
				win12_i <= iwi0;
				win13_i <= iwi4;
				win14_i <= iwi8;
				win15_i <= iwi12;				
				
				stage<= stage+4'b1;
				end
			end	

		4'b1001:					//STAGE 9
			begin
				if (ready)
				begin
				tr0 <= br0;
				tr1 <= br8;
				
				tr2 <= br2;
				tr3 <= br10;
				
				tr4 <= br4;
				tr5 <= br12;
				
				tr6 <= br6;
				tr7 <= br14;
				
				tr8 <= br1;
				tr9 <= br9;
				
				tr10 <= br3;
				tr11 <= br11;
				
				tr12 <= br5;
				tr13 <= br13;
				
				tr14 <= br7;
				tr15 <= br15;
				
				tr16 <= br16;
				tr17 <= br24;
				
				tr18 <= br18;
				tr19 <= br26;
				
				tr20 <= br20;
				tr21 <= br28;
				
				tr22 <= br22;
				tr23 <= br30;
				
				tr24 <= br17;
				tr25 <= br25;
				
				tr26 <= br19;
				tr27 <= br27;
				
				tr28 <= br21;
				tr29 <= br29;
				
				tr30 <= br23;
				tr31 <= br31;
				
				ti0 <= bi0;
				ti1 <= bi8;
				
				ti2 <= bi2;
				ti3 <= bi10;
				
				ti4 <= bi4;
				ti5 <= bi12;
				
				ti6 <= bi6;
				ti7 <= bi14;
				
				ti8 <= bi1;
				ti9 <= bi9;
				
				ti10 <= bi3;
				ti11 <= bi11;
				
				ti12 <= bi5;
				ti13 <= bi13;
				
				ti14 <= bi7;
				ti15 <= bi15;
				
				ti16 <= bi16;
				ti17 <= bi24;
				
				ti18 <= bi18;
				ti19 <= bi26;
				
				ti20 <= bi20;
				ti21 <= bi28;
				
				ti22 <= bi22;
				ti23 <= bi30;
				
				ti24 <= bi17;
				ti25 <= bi25;
				
				ti26 <= bi19;
				ti27 <= bi27;
				
				ti28 <= bi21;
				ti29 <= bi29;
				
				ti30 <= bi23;
				ti31 <= bi31;
				
				win0_r <= iwr0;
				win1_r <= iwr2;
				win2_r <= iwr4;
				win3_r <= iwr6;
				win4_r <= iwr8;
				win5_r <= iwr10;
				win6_r <= iwr12;
				win7_r <= iwr14;
				win8_r <= iwr0;
				win9_r <= iwr2;
				win10_r <= iwr4;
				win11_r <= iwr6;
				win12_r <= iwr8;
				win13_r <= iwr10;
				win14_r <= iwr12;
				win15_r <= iwr14;
	 
				win0_i <= iwi0;
				win1_i <= iwi2;
				win2_i <= iwi4;
				win3_i <= iwi6;
				win4_i <= iwi8;
				win5_i <= iwi10;
				win6_i <= iwi12;
				win7_i <= iwi14;
				win8_i <= iwi0;
				win9_i <= iwi2;
				win10_i <= iwi4;
				win11_i <= iwi6;
				win12_i <= iwi8;
				win13_i <= iwi10;
				win14_i <= iwi12;
				win15_i <= iwi14;				
				
				stage<= stage+4'b1;
				end
			end
			
		4'b1010:					//STAGE 10
			begin
				if (ready)
				begin
				tr0 <= br0;
				tr1 <= br16;
				
				tr2 <= br2;
				tr3 <= br18;
				
				tr4 <= br4;
				tr5 <= br20;
				
				tr6 <= br6;
				tr7 <= br22;
				
				tr8 <= br8;
				tr9 <= br24;
				
				tr10 <= br10;
				tr11 <= br26;
				
				tr12 <= br12;
				tr13 <= br28;
				
				tr14 <= br14;
				tr15 <= br30;
				
				tr16 <= br1;
				tr17 <= br17;
				
				tr18 <= br3;
				tr19 <= br19;
				
				tr20 <= br5;
				tr21 <= br21;
				
				tr22 <= br7;
				tr23 <= br23;
				
				tr24 <= br9;
				tr25 <= br25;
				
				tr26 <= br11;
				tr27 <= br27;
				
				tr28 <= br13;
				tr29 <= br29;
				
				tr30 <= br15;
				tr31 <= br31;
				
				
				ti0 <= bi0;
				ti1 <= bi16;
				
				ti2 <= bi2;
				ti3 <= bi18;
				
				ti4 <= bi4;
				ti5 <= bi20;
				
				ti6 <= bi6;
				ti7 <= bi22;
				
				ti8 <= bi8;
				ti9 <= bi24;
				
				ti10 <= bi10;
				ti11 <= bi26;
				
				ti12 <= bi12;
				ti13 <= bi28;
				
				ti14 <= bi14;
				ti15 <= bi30;
				
				ti16 <= bi1;
				ti17 <= bi17;
				
				ti18 <= bi3;
				ti19 <= bi19;
				
				ti20 <= bi5;
				ti21 <= bi21;
				
				ti22 <= bi7;
				ti23 <= bi23;
				
				ti24 <= bi9;
				ti25 <= bi25;
				
				ti26 <= bi11;
				ti27 <= bi27;
				
				ti28 <= bi13;
				ti29 <= bi29;
				
				ti30 <= bi15;
				ti31 <= bi31;
				
				win0_r <= iwr0;
				win1_r <= iwr1;
				win2_r <= iwr2;
				win3_r <= iwr3;
				win4_r <= iwr4;
				win5_r <= iwr5;
				win6_r <= iwr6;
				win7_r <= iwr7;
				win8_r <= iwr8;
				win9_r <= iwr9;
				win10_r <= iwr10;
				win11_r <= iwr11;
				win12_r <= iwr12;
				win13_r <= iwr13;
				win14_r <= iwr14;
				win15_r <= iwr15;
	 
				win0_i <= iwi0;
				win1_i <= iwi1;
				win2_i <= iwi2;
				win3_i <= iwi3;
				win4_i <= iwi4;
				win5_i <= iwi5;
				win6_i <= iwi6;
				win7_i <= iwi7;
				win8_i <= iwi8;
				win9_i <= iwi9;
				win10_i <= iwi10;
				win11_i <= iwi11;
				win12_i <= iwi12;
				win13_i <= iwi13;
				win14_i <= iwi14;
				win15_i <= iwi15;				
				
				stage<= stage+4'b1;
				end
			end
			
			endcase
			end

endmodule
