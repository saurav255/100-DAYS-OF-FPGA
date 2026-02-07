`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2025 12:47:56
// Design Name: 
// Module Name: bool_fn
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
module majority(output reg y, input a, b, c);
     
       always@(*) begin
        case({a,b,c})
            3'b000 : y = 0;
            3'b001 : y = 0;
            3'b010 : y = 0;
            3'b011 : y = 1;
            3'b100 : y = 0;
            3'b101 : y = 1;
            3'b110 : y = 1;
            3'b111 : y = 1;
        endcase
       end
        
        
     


endmodule

module bool_fn( input [2:0]x, output y
    );
    majority(y, x[2], x[1], x[0]);
endmodule
