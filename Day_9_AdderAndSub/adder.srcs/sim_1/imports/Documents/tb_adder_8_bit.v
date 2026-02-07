// 8 bit adder testbench
`timescale 1ns/1ps

module tb_adder_8_bit();

reg [7:0]a, b;
wire [8:0]y;

adder_8_bit dut(a, b, y);

integer i, j;
initial begin
	for(i = 0; i<256; i = i+1) begin
	   for(j = 0; j<256; j = j + 1) begin
	       a = i;
	       b = j;
	       #1
	       if(y == (a+b))
	        $display("CORRECT");
	       else
	        $display("NOT CORRECT");
	        
	        #9;
	   end
    end
	$stop;
end

endmodule