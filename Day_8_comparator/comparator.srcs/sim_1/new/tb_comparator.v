`timescale 1ns / 1ps



module tb_comparator();

reg [1:0]a, b;
wire y1, y2, y3;
comparator_2bit dut(.a(a), .b(b), .y1(y1), .y2(y2), .y3(y3));

integer i, j;
initial begin
    for(i = 0; i<4; i = i+1) begin
        for(j = 0; j<4; j = j + 1) begin
            a = i; b = j; #10;
        end
    end
    $stop;
end


endmodule
