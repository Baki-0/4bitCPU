module ALU(
    input [3:0] A,
    input [3:0] B,
    input clk,
    output [3:0] S,
    output ZF   //ZeroFlag
);
    wire c1,c2,c3,c4;  //carry、名づけが最悪すぎ
    wire Din;
    HA ha1(A[0],B[0],S[0],c1);
    FA fa1(A[1],B[1],c1,S[1],c2);
    FA fa2(A[2],B[2],c2,S[2],c3);
    FA fa3(A[3],B[3],c3,S[3],c4);

    assign Din = (~S[0]) & (~S[1]) & (~S[2]) & (~S[3]);
    DFF dff1(Din,clk,ZF);

endmodule