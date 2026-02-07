module button_debounce(input clk, rst, pb, output reg pb_clean);
    localparam delay = 100000;
    reg ff1, ff2;
    reg [16:0]ctr;
    always@(posedge clk) begin
        if(rst) begin
            ff1 <= 0;
            ff2 <= 0;
        end else begin
            ff1 <= pb;
            ff2 <= ff1;
        end
    end
    always@(posedge clk) begin
        if(rst)begin
            ctr <= 0;
            pb_clean <= 0;
        end else begin
            if(pb_clean != ff2) begin
                if(ctr == delay) begin
                    pb_clean <= ff2;
                    ctr <= 0;
                end else begin
                    ctr <= ctr + 1;
                end
            end else begin
                ctr <= 0;
            end
        end
    end
endmodule 