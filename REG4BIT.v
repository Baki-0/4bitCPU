module REG4BIT(
    input [3:0] A,
    input clk,
    input ctrl,
    output [3:0] O
);

    wire [3:0] Mout;
    MUX4BIT2IN m44(O,A,ctrl,Mout);

    DFF dff2(Mout[0],clk,O[0]);
    DFF dff3(Mout[1],clk,O[1]);
    DFF dff4(Mout[2],clk,O[2]);
    DFF dff5(Mout[3],clk,O[3]);

endmodule