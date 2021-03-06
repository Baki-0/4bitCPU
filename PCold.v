module PCold(
    input [3:0] A,
    input clk,
    input ctrl,
    output [3:0]O
);

    wire [3:0] MO;  //MUX Out
    wire [3:0] MI;  //MUX In

    MUX2BIT m25(MI[0],A[0],ctrl,MO[0]);
    MUX2BIT m26(MI[1],A[1],ctrl,MO[1]);
    MUX2BIT m27(MI[2],A[2],ctrl,MO[2]);
    MUX2BIT m28(MI[3],A[3],ctrl,MO[3]);

    DFF dff6(MO[0],clk,O[0]);
    DFF dff7(MO[1],clk,O[1]);
    DFF dff8(MO[2],clk,O[2]);
    DFF dff9(MO[3],clk,O[3]);
    //DFFの否定出力をMIに接続
    assign MI[0] = ~O[0];

    assign MI[1] = O[0]^O[1];
    assign MI[2] = ((~O[0]) & O[2]) | ((~O[1]) & O[2]) | (O[0]&O[1]&(~O[2])); //カルノー図で導出、頑張って！
    assign MI[3] = ((~O[0]) & O[3]) | ((~O[1]) & O[3]) | ((~O[2]) & O[3]) | (O[0]&O[1]&O[2]&(~O[3]));

endmodule