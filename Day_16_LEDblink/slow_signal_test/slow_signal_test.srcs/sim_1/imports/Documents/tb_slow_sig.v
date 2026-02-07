module tb_slow_sig();
	
	wire [2:0]sig;
	reg clk, rst;
	initial begin
		clk = 0;
	end
	slow_sig dut(.sig(sig), .clk(clk), .rst(rst));

	always #5 clk = ~clk;
	
	initial begin
		rst = 1'b1;
		@(posedge clk);
		@(posedge clk);
		rst = 1'b0;
	end

endmodule 