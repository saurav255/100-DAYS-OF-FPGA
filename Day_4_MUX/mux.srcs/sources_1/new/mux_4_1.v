`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2025 10:13:35
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1( input I0, I1, I2, I3, S0, S1, output reg y );

//    always@(*) begin
//        if(S0 == 0 && S1 == 0) begin
//            y = I0;
//        end else if(S0 == 1 && S1 == 0) begin
//            y = I1;
//        end else if(S0 == 0 && S1 == 1) begin
//            y = I2;
//        end else if(S0 == 1 && S1 == 1) begin
//            y = I3;
//        end
//    end

    always@(*) begin
        case({S1, S0})
            2'b00 : begin
                y = I0;
            end
            2'b01 : begin
                y = I1;
            end
            2'b10 : begin
                y = I2;
            end
            2'b11: begin
                y = I3;
            end
            default : begin
                y = I0;
            end
        endcase
    
    end

endmodule
