module up_down_counter(input clk, rst, input singl_cyc_pulse, input sw_dir, output reg [15:0]led);
    always@(posedge clk) begin
        if(rst) begin
            led <= 0;
        end else begin
           if(singl_cyc_pulse) begin
                if(sw_dir) 
                    led <= led + 1;
                else 
                    led <= led - 1;
           end 
        end
    end
endmodule