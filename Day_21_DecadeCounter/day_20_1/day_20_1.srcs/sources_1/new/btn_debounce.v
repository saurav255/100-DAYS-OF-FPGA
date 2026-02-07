`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 17:24:38
// Design Name: 
// Module Name: btn_debounce
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


module btn_debounce(
input pb_in, clk, rst, output reg clean_pb
    );
    
    reg pb_clean;
localparam delay = 100000;
    reg [16:0]ctr;
    always@(posedge clk) begin
        if(rst)begin
            ctr <= 0;
            pb_clean <= 0;
        end else begin
            if(pb_clean != pb_in) begin
                if(ctr == delay) begin
                    pb_clean <= pb_in;
                    ctr <= 0;
                end else begin
                    ctr <= ctr + 1;
                end
            end else begin
                ctr <= 0;
            end
        end
    end

reg last_state;
always@(posedge clk) begin
    if(rst) begin
        clean_pb <= 1'b0;
    end else begin
        last_state <= pb_clean;
        if(pb_clean & (~last_state)) begin
            clean_pb <= 1'b1;
        end else begin
            clean_pb <= 1'b0;
        end

    end
end
    
endmodule
