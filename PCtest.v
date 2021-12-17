`timescale 1ns / 1ps
module PCtest;

reg [3:0] A;
reg clk;
reg ctrl;
wire [3:0] O;

PC test(A,clk,ctrl,O);

initial begin
    $dumpfile("PCtest.vcd");
    $dumpvars(0, PCtest);
    $monitor("%t: clk = %b, A = %d, ctrl = %d, O = %d",$time, clk, A, ctrl, O);
end

initial begin
    A = 4'b1010;
    clk = 1;
    ctrl = 0;
    #500
    ctrl = 1'b1;
    #700
    ctrl = 1'b0;
    #1000
    $finish;
end

always #5  begin
    clk <= ~clk;
end

endmodule