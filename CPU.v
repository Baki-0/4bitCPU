module CPU(
    input inclk,
    input [3:0] In,
    output [3:0] HEX
);
    wire L0,L1,L2,L3,HLT,ZF;
    wire [1:0] S0;
    wire [1:0] S1;
    wire [3:0] MUXout1;
    wire [3:0] MUXout2;
    wire [3:0] SUM;
    wire [3:0] RegOut1;
    wire [3:0] RegOut2;
    wire [3:0] PCOut;
    wire [7:0] ROMOut;
    wire [3:0] Im;

    assign clk = inclk & (~HLT);

    ALU alu1(MUXout1,MUXout2,clk,SUM,ZF);
    REG4BIT reg41(SUM,clk,L0,RegOut1);
    REG4BIT reg42(SUM,clk,L1,RegOut2);
    REG4BIT reg43(SUM,clk,L2,HEX);
    PC pc1(SUM,clk,L3,PCOut);
    ROM rom1(PCOut,ROMOut);
    DECODER deco1(ROMOut,ZF,Im,S0,S1,L0,L1,L2,L3,HLT);
    MUX4BIT4IN m81(RegOut1,RegOut2,In,4'b0000,S0,MUXout1);
    MUX4BIT4IN m82(RegOut1,RegOut2,Im,4'b0000,S1,MUXout2);

endmodule