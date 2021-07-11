module top (
	input			CLK100MHZ,
	output	[3:0]	vgaRed,
	output	[3:0]	vgaBlue,
	output	[3:0]	vgaGreen,
	output			Hsync,
	output			Vsync
);

wire [9:0] x;
wire [9:0] y;
wire dsp_en;

reg [3:0] red	=	4'hf;
reg [3:0] blue	=	4'h0;
reg [3:0] green	=	4'h0;

clock_vga mod1(
	.i_clk(CLK100MHZ),
	.o_vs(Vsync),
	.o_hs(Hsync),
	.o_next_x(x),
	.o_next_y(y),
	.o_disp_en(dsp_en)
);

assign vgaBlue 	= dsp_en ? blue : 0;
assign vgaRed 	= dsp_en ? red 	: 0;
assign vgaGreen = dsp_en ? green: 0;
	
endmodule