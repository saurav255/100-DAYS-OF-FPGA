// tb_alu
module tb_alu();
	
	wire [3:0]x, y;
	reg [3:0]a, b, opcode;
	alu dut(.x(x), .y(y), .a(a), .b(b), .opcode(opcode));
	
	initial begin
		a = 4'b0010; b = 4'b0100;
		opcode = 4'b0000; #10
		
		a = 4'b0010; b = 4'b0100;
		opcode = 4'b1000; #10
		
		a = 4'b0010; b = 4'b0100;
		opcode = 4'b1010; #10
		
		a = 4'b0010; b = 4'b0100;
		opcode = 4'b1101; #10
		
		$stop;
	
	end


endmodule