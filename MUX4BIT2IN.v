module MUX4BIT2IN(
    input [3:0] A,
    input [3:0] B,
    input S,    //selector
    output [3:0] O
);

    MUX2BIT m21(A[0],B[0],S,O[0]);
    MUX2BIT m22(A[1],B[1],S,O[1]);
    MUX2BIT m23(A[2],B[2],S,O[2]);
    MUX2BIT m24(A[3],B[3],S,O[3]);

endmodule