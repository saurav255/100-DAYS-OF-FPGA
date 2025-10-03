`timescale 1ns / 1ps // 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2025 11:16:48
// Design Name: 
// Module Name: logic_gates_tb
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


module logic_gates_tb();
    
    reg a, b;
    wire y_and, y_or, y_not, y_nand, y_nor, y_xor, y_xnor;
    
    logic_gate dut(.a(a), .b(b), .y_and(y_and), .y_or(y_or), .y_not(y_not), .y_nand(y_nand), .y_nor(y_nor), .y_xor(y_xor), .y_xnor(y_xnor));
    
    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $stop;
    end

endmodule
