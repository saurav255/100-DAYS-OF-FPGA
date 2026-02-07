module dff(Q,D,clk,rst);
	input D, clk, rst;
	output reg Q;
	
	always@(posedge clk) begin
		if(rst) begin
			Q<=1'b0;
		end else begin
			Q <= D;
		end
	end


endmodule