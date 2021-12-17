module DFF(
    clk, D, Q
);

input clk, D;
output Q;
reg Q;

always@(posedge clk)begin
    Q <= D; 
end
endmodule