module Final(clk, reset, F);
    input clk, reset;
    output [6:0] F;

    wire one_hz_clk;
    wire [3:0] bcd_out;

    clock_divider U1 (
        .clk(clk),
        .reset(reset),
        .clkOut(one_hz_clk)
    );

    BCD_counter U2 (
        .clk(one_hz_clk),
        .reset(reset),
        .BCD(bcd_out)
    );

    BCD_7SEG U3 (
        .X(bcd_out),
        .F(F)
    );

endmodule