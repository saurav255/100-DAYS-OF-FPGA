`timescale 1ns/1ps
module tb_dff();
	
	wire Q;
	reg clk, rst, D; 
	initial begin
	   clk = 1'b0;
	end
	always #5 clk = ~clk;
	
	dff dut(.Q(Q),.D(D),.clk(clk),.rst(rst));
	
	initial begin
		rst = 1'b1;
		D = 1'b0;
		#10;
		rst = 1'b0;
		D = 1'b0;
		#10;
		D = 1'b1;
		#10;
		D = 1'b0;
		#10;
		$stop;
	end

 
endmodule