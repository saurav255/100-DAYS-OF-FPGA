module slow_sig(led, clk, rst);
	
	input clk, rst;
	output reg led;
	reg [27:0]sig;
	always@(posedge clk) begin
		if(rst) begin
			sig <= 28'b0;
		end else begin
			if(sig == 100000000) begin
			     sig <= 0;
			     led <= ~led;
			end else begin
			     sig <= sig + 1;
			end
		end
	end
	

endmodule 