module tx_cdc(
	input wire       rst_async_i, 

	input wire       tx_clk_i, 
	input wire       phy_tx_v_i, 
	input wire [1:0] phy_tx_i,

	output wire       phy_tx_v_o,
	output wire [1:0] phy_tx_o
); 
wire clk_ibuf, clk_pll, clk_pll_feedback, clk;
wire pll_lock;

/* clk */
IBUF m_ibuf_clk(
	.I(tx_clk_i),
	.O(clk_ibuf)
);

PLLE2_BASE #(
   .CLKFBOUT_MULT(20),        
   .CLKIN1_PERIOD(20.0),      
   .CLKOUT0_DIVIDE(20),
   .DIVCLK_DIVIDE(1)
) m_tx_clk_pll (
   .CLKFBIN(clk_pll_feedback),
   .CLKFBOUT(clk_pll_feedback),
   .CLKIN1(clk_ibuf),    
   .CLKOUT0(clk_pll),
/* verilator lint_off PINCONNECTEMPTY */
   .CLKOUT1(),
   .CLKOUT2(),
   .CLKOUT3(),
   .CLKOUT4(),
   .CLKOUT5(),
/* verilator lint_on PINCONNECTEMPTY */
   .LOCKED(pll_lock),
   .PWRDWN(1'b0),
   .RST(rst_async_i) 
);

BUFG m_bufg_clk(
	.I(clk_pll),
	.O(clk)
);

reg       data_d1_v_q, data_d2_v_q;
reg [1:0] data_d1_q, data_d2_q;

always @(posedge clk) begin
	data_d1_v_q <= phy_tx_v_i;
	data_d2_v_q <= data_d1_v_q;
	data_d1_q   <= phy_tx_i;
	data_d2_q   <= data_d1_q;
end

assign phy_tx_o = data_d2_q; 
assign phy_tx_v_o = data_d2_v_q;

endmodule
