`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 16:41:29
// Design Name: 
// Module Name: decade_ctr
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


module decade_ctr(input clk, rst, output [3:0]led
    );
   
    wire clr;
    wire q3, q2, q1, q0;
    
    wire not_q3;
    not not1(not_q3, q3);
    wire and_q0_not_q3;
    and and1(and_q0_not_q3, not_q3, q0);
    wire and_q0_q1;
    and and2(and_q0_q1, q0, q1);
    wire and_q0_q1_q2, and_q0_q3, or_q3;
    and and3(and_q0_q1_q2, q0, q1, q2);
    and and4(and_q0_q3, q0, q3);
    or or1(or_q3, and_q0_q1_q2, and_q0_q3);
    
    tff tff0(.clk(clk), .clr(rst), .t(1'b1), .q(q0));
    tff tff1(.clk(clk), .clr(rst), .t(and_q0_not_q3), .q(q1));
    tff tff2(.clk(clk), .clr(rst), .t(and_q0_q1), .q(q2));
    tff tff3(.clk(clk), .clr(rst), .t(or_q3), .q(q3));
    
    assign led = {q3, q2, q1, q0}; 
endmodule
