`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2025 12:57:59
// Design Name: 
// Module Name: demux_1_4
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


module demux_1_4(input s0, s1, I, output y0, y1, y2, y3
    );
    
    assign y0 = I & (~s1 & ~s0);
    assign y1 = I & (~s1 & s0);
    assign y2 = I & (s1 & ~s0);
    assign y3 = I & (s1 & s0);
    
endmodule
