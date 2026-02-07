`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 16:42:06
// Design Name: 
// Module Name: tff
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


module tff(input clk, clr, t, output reg q
    );
    
    always@(posedge clk, posedge clr) begin
        if(clr == 1'b1) begin
            q<=0;
        end else begin
            if(t)
                q <= ~q;
        end
    end
endmodule
