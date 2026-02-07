// rising edge detector 
module rising_edge_ctr(led, clk, rst, sig);
	input clk, rst, sig;
	output reg [15:0]led;
	reg prev_sig;
	reg rise_pulse;
	
	always@(posedge clk) begin
		if(rst) begin
			prev_sig <= 1'b0;
			
			rise_pulse <= 1'b0;
		end else begin
			prev_sig <= sig;
			rise_pulse = sig & (~prev_sig);
		end
	end
	
	always@(posedge clk) begin
	   if(rst) begin
	       led <= 16'b0;
	   end else begin
	       if(rise_pulse) begin
	           led <= led+1;
	       end
	   end
	end
	
//	assign rise_pulse = sig & (~prev_sig);

endmodule