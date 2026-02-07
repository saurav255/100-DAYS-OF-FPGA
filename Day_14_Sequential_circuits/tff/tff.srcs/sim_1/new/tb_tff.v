`timescale 1ns/1ps
module tb_tff();

reg t, clk, rst;
wire q;

tff dut(q, t, clk, rst);

initial clk = 0;
always #5 clk = ~clk;

initial begin
    rst = 1; t = 0;
    #10 rst = 0;

    t = 1;
    #20;

    t = 0;
    #20;

    t = 1;
    #20;

    $stop;
end

endmodule
