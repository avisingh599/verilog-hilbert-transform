`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company
// Engineer
// 
// Create Date:    22:26:37 03/03/2014 
// Design Name: 
// Module Name:    bffly 
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
module bffly(
	input wire signed [31:0] xa_r,
	input wire signed [31:0] xa_i,
	input wire signed [31:0] xb_r,
	input wire signed [31:0] xb_i,
	input wire signed [15:0] w_r,
	input wire signed [15:0] w_i,
	output reg signed [31:0] ya_r,
	output reg signed [31:0] ya_i,
	output reg signed [31:0] yb_r,
	output reg signed [31:0] yb_i,
	output reg ready,
	input wire clk,
	input wire enable
	);
	
	// ya = xa + xb*w
	// yb = xa - xb*w
	
	// ya_r = xa_r + xb_r*w_r - xb_i*w_i
	// ya_i = xa_i + xb_r*w_i + xb_i*w_r
	
	// yb_r = xa_r - xb_r*w_r + xb_i*w_i
	// yb_i = xa_i - xb_r*w_i - xb_i*w_r
	
	
	wire signed [47:0] temp_r_48;
	wire signed [47:0] temp_i_48;
	
	wire signed [31:0] temp_r_32;
	wire signed [31:0] temp_i_32;
	
	assign temp_r_48 = xb_r*w_r - xb_i*w_i;
	assign temp_i_48 = xb_r*w_i + xb_i*w_r;
	
	assign temp_r_32 = {temp_r_48[47], temp_r_48[44:14]};
	assign temp_i_32 = {temp_i_48[47], temp_i_48[44:14]};

	always@(posedge clk)
	begin
	 if (enable)
	 begin
		ya_r <= xa_r + temp_r_32; 
		ya_i <= xa_i + temp_i_32;
		yb_r <= xa_r - temp_r_32;
		yb_i <= xa_i - temp_i_32;
		ready <= 1;
		//$display ("tempr32=%b, tempi32=%b, tempr16=%b, tempi16=%b", temp_r_32, temp_i_32, temp_r_16, temp_i_16);
	 end
	 
	 else ready<= 0;
	end

endmodule
