//testbench for rising edge detector
`timescale 1ns/1ps
module tb_rising_edge();
	
	wire rp;
	reg clk, rst, sig;
	rising_edge dut(.rise_pulse(rp), .clk(clk), .rst(rst), .sig(sig));
	
	always#5 clk = ~clk;
	
	initial begin
		clk = 0;
		rst = 1'b1;
		sig = 0;
		@(posedge clk);
		@(posedge clk);
		rst = 1'b0;
		#3;
		sig = 1;
		#10;
		sig = 0;
		#20;
		sig = 1;
		#10;
		sig = 0;
		#10;
		$stop;
		
	end
	
endmodule