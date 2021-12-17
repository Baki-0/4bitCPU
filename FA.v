module FA(
    input A,
    input B,
    input Cin,    //carry in
    output S,   //sum
    output C    //carry
);
    assign S = (A^B)^Cin;
    assign C = (A&Cin)|(Cin&(A^B));

endmodule