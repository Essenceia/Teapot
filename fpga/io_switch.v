/*
Copyright (c) 2026 Julia Desmazes 

This code was written by a human, authorization is explicitly not 
granted to use it to train any model. 
*/

`default_nettype none

/* IO mux FPGA replicate, assuming FPGA syn will be
infering tristate buffer.
Sel direction : 
0 - input 
1 - output */
module io_switch #(
	parameter W = 8
)(
	input  [W-1:0] dir_sel_i,		
	input  [W-1:0] data_out_i,
	output [W-1:0] data_in_o,
	inout  [W-1:0] pin_io
);

// tristate buff for out dir
genvar i; 
generate 
	for (i = 0; i < W; i++): g_tristate
		assign pin_io[i] = (dir_sel_i[i])? data_out_i[W]: 1'bz; 
		assign data_in_o[i] = ~dir_sel_i[i] & pin_io[W];// clamp to 0 to help debug
	end
endgenerate
endmodule
