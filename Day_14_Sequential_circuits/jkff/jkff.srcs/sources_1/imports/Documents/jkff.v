// jkff
// flip flop
module jkff(q, j, k, clk, rst);
	input j, k, clk, rst;
	output reg q;
	always@(posedge clk) begin
		if(rst) begin
			q <= 1'b0;
		end else begin
			case({j,k})
				2'b00 : q <= q;
				2'b01 : q <= 1'b0;
				2'b10 : q <= 1'b1;
				2'b11 : q <= ~q;
			endcase
		end
	
	end
	
endmodule