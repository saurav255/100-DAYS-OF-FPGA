`timescale 1ns/1ps
module tb_jkff();

reg j, k, clk, rst;
wire q;

jkff dut(q, j, k, clk, rst);

initial clk = 0;
always #5 clk = ~clk;

initial begin
    rst = 1; j = 0; k = 0;
    #10 rst = 0;
    j = 1; k = 0;
    #10;
    j = 0; k = 1;
    #10;
    j = 1; k = 1;
    #10;
    j = 0; k = 0;
    #10;
    $stop;
end

endmodule
