// 4 bit ctr
module ctr_4_bit(y, clk, rst);
	
	input clk, rst;
	// divider counter 
	reg [15:0]ctr;
	output reg [15:0]y;
	
	always@(posedge clk) begin
		if(rst) begin
			y<=4'b0;
			ctr <= 0;
		end else begin
			if(ctr == 65535) begin
			 y <= y + 1;
			end
			 ctr <= ctr + 1;
		end
	
	end

endmodule 