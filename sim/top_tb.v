`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2021 22:04:12
// Design Name: 
// Module Name: top_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_tb();

reg clk = 1;
always #5 clk <= !clk;

wire [3:0] red_tb;
wire [3:0] green_tb;
wire [3:0] blue_tb;
wire vs_tb;
wire hs_tb;

top modPrimary(
	.CLK100MHZ(clk),
	.vgaRed(red_tb),
	.vgaBlue(blue_tb),
	.vgaGreen(green_tb),
	.Hsync(hs_tb),
	.Vsync(vs_tb)
);

endmodule
