module BCD_counter(clk, reset, BCD);
input clk, reset;
output reg [3:0] BCD;

always @(posedge clk or negedge reset) begin
    
    if(reset==0) begin
        BCD <= 4'b0000;
    end
    else begin
        if (BCD == 4'd9) begin
            BCD <= 4'd0;
        end
        else begin
            BCD <= BCD + 1'b1;
        end
    end

end
endmodule