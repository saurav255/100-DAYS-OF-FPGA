// tff
module tff(q, t, clk, rst);

    input t, clk, rst;
	output reg q;
	
	always@(posedge clk) begin
		if(rst) begin
			q<=1'b0;
		end else begin
			if(t) begin
				q <= ~q;
			end else begin
				q <= q;
			end
		end
	end

endmodule