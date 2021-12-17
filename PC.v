module PC(
    A,clk,ctrl,O
);
    input [3:0] A;
    input clk;
    input ctrl;
    output [3:0] O;
    
    reg [3:0] O = 4'b0000;
    always @(posedge clk) begin
        if (ctrl) begin
            O <= A;
        end else begin
            O <= O+1; 
        end
    end

endmodule