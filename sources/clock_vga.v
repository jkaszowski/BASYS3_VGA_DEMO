`timescale 1ns / 1ps

module clock_vga(
	input 			i_clk,
	output			o_vs,
	output			o_hs,
	output	[10:0] 	o_next_x,
	output  [9:0]	o_next_y,
	output			o_disp_en
);

/*

The purpose of this module is to generate VGA sync signals and count current pixel position.

*/

// Clock divider

wire pixel_clk;

clk_vga clock_converter(
	.clk_in1(i_clk),
	.clk_out1(pixel_clk)
);

// Registers holding values needed for timing

reg [10:0] x 		= 0;
reg [10:0] next_x 	= 0;
reg [9:0] y 		= 0;
reg [9:0] next_y 	= 0;

reg hsync = 1;
reg vsync = 1;
reg display_en = 0;

localparam display_x 		= 11'd	1024;
localparam display_y 		= 11'd	768;
localparam front_porch_x 	= 11'd	24;
localparam front_porch_y 	= 11'd	3;
localparam sync_pulse_x 	= 11'd	136;
localparam sync_pulse_y 	= 11'd	6;
localparam back_porch_x 	= 11'd	160;
localparam back_porch_y 	= 11'd	29;


always @(posedge pixel_clk ) begin
	if ( (display_x + front_porch_x < x) && (x <= display_x + front_porch_x + sync_pulse_x) ) begin
		hsync <= 0;
	end else begin
		hsync <= 1;
	end
	if (x < display_x + front_porch_x + sync_pulse_x + back_porch_x) begin
		x <= x + 1;
	end else begin
		x <= 0;
		if ( (display_y + front_porch_y < y ) && (y <= display_y + front_porch_y + sync_pulse_y) ) begin
			vsync <= 0;
		end else begin
			vsync <= 1;
		end
		if (y < display_y + front_porch_y + sync_pulse_y + back_porch_y) begin
			y <= y + 1;	
		end else y <= 0;
	end
	if (x< display_x && y < display_y) begin
		display_en <= 1;
	end else display_en <= 0;
end

//assign variables to outputs

assign o_vs = vsync;
assign o_hs = hsync;
assign o_next_x = next_x;
assign o_next_y = next_y;
assign o_disp_en = display_en;

endmodule
