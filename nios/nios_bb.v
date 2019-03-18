
module nios (
	btn_external_connection_export,
	clk_clk,
	led_external_connection_export,
	reset_reset_n);	

	input		btn_external_connection_export;
	input		clk_clk;
	output	[7:0]	led_external_connection_export;
	input		reset_reset_n;
endmodule
