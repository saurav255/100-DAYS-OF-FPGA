// rising edge detector 
module rising_edge(rise_pulse, clk, rst, sig);
	input clk, rst, sig;
	output reg rise_pulse;
	reg prev_sig;
	
	always@(posedge clk) begin
		if(rst) begin
			prev_sig <= 1'b0;
			rise_pulse <= 1'b0;
		end else begin
			prev_sig <= sig;
			rise_pulse <= sig & (~prev_sig);
		end
	end
	
//	assign rise_pulse = sig & (~prev_sig);

endmodule