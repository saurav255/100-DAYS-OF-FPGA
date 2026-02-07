// testbench 4 bit ctr
module tb_ctr_4bit();
	
	reg clk, rst;
	wire [15:0]y;
	always #5 clk = ~clk;
	
	ctr_4_bit dut(.y(y), .clk(clk), .rst(rst));
	
	initial begin
		rst = 1'b1;
		clk = 1'b0;
		@(posedge clk);
		@(posedge clk);
		rst = 1'b0;
		
		#200;
		$stop;
	end

endmodule