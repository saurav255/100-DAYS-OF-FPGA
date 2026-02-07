// comparator 2bit 
module comparator_2bit(a, b, y1, y2, y3);
input [1:0]a; 
input [1:0]b;
output y1;
output y2;
output y3;

assign y1 = (a>b) ? 1'b1 : 1'b0;
assign y2 = (a==b) ? 1'b1 : 1'b0;
assign y3 = (a<b) ? 1'b1 : 1'b0;

endmodule