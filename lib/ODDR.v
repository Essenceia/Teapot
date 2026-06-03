/*
Copyright (c) 2026 Julia Desmazes 

This code was written by a human, authorization is explicitly not 
granted to use it to train any model. 
*/

`default_nettype none

/* black box model for linting */
module ODDR #(
parameter string DDR_CLK_EDGE = "SAME_EDGE",
parameter integer INIT    = 1'b1,
parameter string SRTYPE   = "ASYNC"
)(
	output wire Q,
	input wire C,
	input wire CE,
	input wire D1,
	input wire D2,
	input wire R, 
	input wire S
);
/* dummy logic */
always @(posedge C, negedge C, R) begin
	if (R) Q <= INIT;
	else if (S) Q <= 1'b1;
	else if (CE)	Q <= C? D1: D2;
	else Q <= 1'bX;
end

endmodule
