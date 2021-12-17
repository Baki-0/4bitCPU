module HA(
    input A,
    input B,
    output S,   //sum
    output C    //carry
);

    assign S = A^B; //xor
    assign C = A&B; //and
endmodule