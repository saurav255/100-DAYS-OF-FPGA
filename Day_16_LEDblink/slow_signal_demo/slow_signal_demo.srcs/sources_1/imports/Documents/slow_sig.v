// slower_signal from clock
module slow_sig(slow_signal,clk, rst);
	
	input clk, rst;
	output reg [2:0]slow_signal;
	
	always@(posedge clk or negedge rst) begin
		if(rst == 1) begin
			slow_signal <= 3'b0;
		end else begin
			slow_signal <= slow_signal + 1;
		end
	end
	
	

endmodule