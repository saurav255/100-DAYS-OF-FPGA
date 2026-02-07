// 8 bit adder
module adder_8_bit(a, b, y);
input [7:0]a;
input [7:0]b;
output [8:0] y;

assign y = a + b;

endmodule