`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 16:49:59
// Design Name: 
// Module Name: tb_decade_ctr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_decade_ctr(); 
reg clk = 0;
always #5 clk = ~clk;
reg rst, pb_in;
wire [3:0]led;
decade_ctr dut(.clk(clk), .rst(rst), .pb_in(pb_in), .led(led));

initial begin
    rst = 1'b0;
    pb_in = 1'b0;
    @(negedge clk);
    @(negedge clk);
    rst = 1'b1;
    #10;
    pb_in = 1'b1;
    #30;
//    pb_in = 1'b0;
    #20;
    pb_in = 1'b1;
    #200;
    $stop;
end

endmodule
