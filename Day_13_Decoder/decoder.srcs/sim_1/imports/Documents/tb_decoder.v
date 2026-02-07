module tb_decoder();
	wire [3:0]Y;
	reg [1:0]I;
	dec_2_4 dut(.I(I), .Y(Y));
	initial begin
		I = 2'b00; #10;
		I = 2'b01; #10;
		I = 2'b10; #10;
		I = 2'b11; #10;
		$stop;
	
	end
endmodule