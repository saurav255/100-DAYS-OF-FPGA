module tb_enc();
wire [1:0]Y;
reg [3:0]I;
enc_4_2 dut(I, Y);
initial begin
	I = 4'b0001; #10;
	I = 4'b0010; #10;
	I = 4'b0100; #10;
	I = 4'b1000; #10;
	
	I = 4'b1011; #10;
	I = 4'b0101; #10;
	$stop;
end
endmodule