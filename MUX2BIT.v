module MUX2BIT(
    input A,
    input B,
    input S,    //selector
    output O
);

    assign O = (A&(~S)) | (B&S);

endmodule