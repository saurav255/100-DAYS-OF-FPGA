// testbench 
module tb_slower_signal();
	
	wire [2:0]slow_sig;
	reg clk, rst;
	initial begin
		clk = 0;
	end
	
	always #5 clk = ~clk;
	
	initial begin
		rst = 1;
		@(posedge clk);
		rst = 0;
	end
	
	slow_sig dut(.slow_signal(slow_sig),.clk(clk), .rst(rst));

endmodule