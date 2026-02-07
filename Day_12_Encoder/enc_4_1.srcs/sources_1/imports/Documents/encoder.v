module enc_4_2(I, Y);
input [3:0]I;
output reg [1:0]Y;

always@(*) begin
	if(I[3] == 1) begin
		Y = 2'b11;
	end else if(I[2] == 1) begin
		Y = 2'b10;
	end else if(I[1] == 1) begin
		Y = 2'b01;
	end else begin
		Y = 2'b00;
	end
end 

endmodule