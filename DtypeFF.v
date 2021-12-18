module DtypeFF(
    D, clk, Q
);

input D, clk;
output Q;
reg Q=0;

always@(posedge clk)begin
    Q <= D; 
end
endmodule