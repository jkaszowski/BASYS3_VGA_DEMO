module imageGenerator (
	input			i_clk,
	input	[10:0]	i_x,
	input	[9:0]	i_y,
	output	[3:0]	o_blue,
	output	[3:0]	o_green,
	output	[3:0]	o_red
);

localparam display_x = 640;
localparam display_y = 480;

reg [3:0] blue	= 4'h0;
reg [3:0] red	= 4'h0;
reg [3:0] green	= 4'h0;

always @(posedge i_clk ) begin
	if (i_x < display_x/4) begin
		blue  	<= 4'hf;
		green 	<= 4'hf;
		red 	<= 4'hf;
	end else if ( display_x/4 <= i_x && i_x <= display_x/2 )begin
		blue  	<= 4'h0;
		green 	<= 4'hf;
		red 	<= 4'h0;
	end else begin
		blue  	<= 4'h0;
		green 	<= 4'h0;
		red 	<= 4'h0;
	end
end

assign o_blue	= blue;
assign o_red	= red;
assign o_green	= green;

endmodule