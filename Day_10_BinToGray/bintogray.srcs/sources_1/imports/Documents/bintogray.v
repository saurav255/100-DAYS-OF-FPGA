// bin to gray
module bintogray(bin, gray);
input [3:0]bin;
output reg [3:0]gray;

integer i;
always@(*) begin
	for(i = 0; i<3; i = i+1) begin
		gray[i] = bin[i]^bin[i+1];
	end
	gray[3] = bin[3];
end


endmodule