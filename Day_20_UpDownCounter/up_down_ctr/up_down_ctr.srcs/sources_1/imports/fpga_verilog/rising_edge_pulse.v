module rising_edge_pulse(input clk, rst, long_high, output reg singl_cyc_pulse);
    reg last_state;
    always@(posedge clk) begin
        if(rst) begin
            last_state <= 1'b0;
        end else begin
            last_state <= long_high;
            if(long_high & ~last_state) begin
                singl_cyc_pulse <= 1'b1;
            end else begin
                singl_cyc_pulse <= 1'b0;
            end
        end
    end
endmodule