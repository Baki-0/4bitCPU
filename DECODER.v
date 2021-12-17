module DECODER(
    input [7:0] A,
    input ZF,
    output [3:0] Im,
    output [1:0] S0,
    output [1:0] S1,
    output L0,
    output L1,
    output L2,
    output L3,
    output HLT
);

    assign Im = A[3:0];
    assign S0[0] = ( A[5] | (~A[6]) | (~A[7]) ) & A[4];
    assign S0[1] = A[5];
    assign S1[0] = ( (~A[5])&A[7] ) | ( (~A[4])&A[6] ) | ( (~A[4])&A[5] ) | ( A[4] & (~A[5]) & (~A[6]) );
    assign S1[1] = A[5] | (~A[6]) | (~A[7]);
    assign L0 = ( (~A[6])&(~A[7]) ) | ( (~A[4])&A[6]&A[7] );
    assign L1 = ( (~A[7])&A[6] ) | ( A[4] & (~A[5]) & A[6] );
    assign L2 =  (~A[5]) & (~A[6]) & A[7];
    assign L3 = ( A[5]&A[6]&A[7]&(~ZF) ) | ( A[4]&A[5]&(~A[6])&A[7] );
    assign HLT = (~A[4]) & A[5] & A[7];

endmodule