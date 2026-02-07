module dec_2_4(I, Y);
	input [1:0]I;
	output reg [3:0]Y;
	
	always@(*) begin
		case(I)
			2'b00 : begin
				Y = 4'b0001;
			end
			2'b01 : begin
				Y = 4'b0010;
			end
			2'b10 : begin
				Y = 4'b0100;
			end
			2'b11 : begin
				Y = 4'b1000;
			end
			default : begin
				Y = 4'b0000;
			end
	   endcase
	end
endmodule 