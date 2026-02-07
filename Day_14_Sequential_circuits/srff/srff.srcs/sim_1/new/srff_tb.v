`timescale 1ns/1ps
module tb_srff();
	
	wire q;
	reg clk, rst, s, r;
	initial begin 
	   clk = 0;
	end
	
	always #5 clk = ~clk;
	
	srff dut(.q(q),.s(s), .r(r), .clk(clk),.rst(rst));
	
	initial begin
		rst = 1'b1;
		s = 1'b0;
		r = 1'b0;
		#10;
		rst = 1'b0;
		s = 1'b1; 
		r = 1'b0;
		#10;
		s = 1'b0;
		r = 1'b0;
		#10;
		s = 1'b0;
		r = 1'b1;
		#10;
		s = 1'b1;
		r = 1'b1;
		#10;
	   $stop;
	end


endmodule