`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2025 12:50:18
// Design Name: 
// Module Name: tb_bool_fn
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


module tb_bool_fn();

reg [2:0]x;
wire y; 

bool_fn dut( .x(x), .y(y));

initial begin
    x = 3'b000;
    #10;
    x = 3'b001;
    #10;
    x = 3'b010;
    #10;
    x = 3'b011;
    #10;
    x = 3'b100;
    #10;
    x = 3'b101;
    #10;
    x = 3'b110;
    #10;
    x = 3'b111;
    #10;
    $stop;
end

endmodule
