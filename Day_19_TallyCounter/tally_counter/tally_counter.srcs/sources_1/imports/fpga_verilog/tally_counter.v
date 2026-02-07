module tally_ctr(input clk, rst, pb_in, output reg [15:0]led);

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
        led <= 0;
    end else begin
        last_state <= pb_clean;
        if(pb_clean & (~last_state)) begin
            led <= led + 1;
        end

    end
end

endmodule