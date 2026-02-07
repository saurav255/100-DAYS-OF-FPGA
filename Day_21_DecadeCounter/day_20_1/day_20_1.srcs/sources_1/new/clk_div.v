`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 20:18:56
// Design Name: 
// Module Name: clk_div
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


module clk_div(input clk, rst, output reg clk_2s
    );
    reg [26:0]ctr;
    always@(posedge clk) begin
        if(rst) begin
            clk_2s <= 0; 
            ctr <= 0;
        end else begin
            if(ctr == 100000000-1) begin
                clk_2s <= ~clk_2s;
                ctr <= 0;
            end else begin
                ctr <= ctr+1;
            end
        end
    end
endmodule
