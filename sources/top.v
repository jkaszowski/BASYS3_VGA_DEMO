module top (
	input			CLK100MHZ,
	output	[3:0]	vgaRed,
	output	[3:0]	vgaBlue,
	output	[3:0]	vgaGreen,
	output			Hsync,
	output			Vsync
);

wire [10:0] x;
wire [9:0] y;
wire dsp_en;

wire [3:0] red;
wire [3:0] green;
wire [3:0] blue;

clock_vga mod1(
	.i_clk(CLK100MHZ),
	.o_vs(Vsync),
	.o_hs(Hsync),
	.o_next_x(x),
	.o_next_y(y),
	.o_disp_en(dsp_en)
);

imageGenerator mod2(
	.i_clk(CLK100MHZ),
	.i_x(x),
	.i_y(y),
	.o_green(green),
	.o_red(red),
	.o_blue(blue)
);

assign vgaBlue 	= dsp_en ? blue : 0;
assign vgaRed 	= dsp_en ? red 	: 0;
assign vgaGreen = dsp_en ? green: 0;
	
endmodule