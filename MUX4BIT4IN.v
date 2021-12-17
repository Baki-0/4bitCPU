module MUX4BIT4IN(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    input [1:0] S,    //selector
    output [3:0] O
);

    wire [3:0]MUX1;
    wire [3:0]MUX2;
    wire SA;
    assign SA = S[0] & S[1];

    MUX4BIT2IN m41(A,B,S[0],MUX1);
    MUX4BIT2IN m42(MUX1,C,S[1],MUX2);
    MUX4BIT2IN m43(MUX2,D,SA,O);
endmodule