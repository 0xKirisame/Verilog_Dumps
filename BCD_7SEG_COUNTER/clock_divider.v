module clock_divider(clk, reset, clkOut);
input clk, reset;
output reg clkOut;
reg [24:0] counter; //think about how many bits you need for your counter
always @(posedge clk or negedge reset) begin
if(reset==0) begin
counter = 0;
clkOut = 0;
end
else begin
counter = counter + 1;
if (counter == 25000000) begin
clkOut = ~clkOut;
counter = 0;

end
end
end
endmodule