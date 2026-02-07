`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 20:23:16
// Design Name: 
// Module Name: top
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


module top(input clk, rst, output [3:0]led
    );
    wire clk_2s;
    clk_div cd(.clk(clk), .rst(rst), .clk_2s(clk_2s));
    decade_ctr(.clk(clk_2s), .rst(rst), .led(led));
endmodule
