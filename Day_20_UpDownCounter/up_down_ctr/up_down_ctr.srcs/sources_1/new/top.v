`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 18:58:50
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


module top(input clk, rst, pb_in, sw, output [15:0]led
    );
    wire pb_clean;
    button_debounce btn_deb(.clk(clk), .rst(rst), .pb(pb_in), .pb_clean(pb_clean));
    wire singl_cyc_pulse;
    rising_edge_pulse rp(.clk(clk), .rst(rst), .long_high(pb_clean), .singl_cyc_pulse(singl_cyc_pulse));
    up_down_counter ud_ctr(.clk(clk), .rst(rst), .singl_cyc_pulse(singl_cyc_pulse), .sw_dir(sw), .led(led));
endmodule
