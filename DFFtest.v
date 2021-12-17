`timescale 1ns / 1ps
module DFFtest;

reg D, clk;
wire Q;

DFF test(clk, D, Q);

initial begin
    $dumpfile("DFFtest.vcd");
    $dumpvars(0, DFFtest);
    $monitor("%t: clk = %b, D = %b, Q = %b",$time, clk, D, Q);
end

initial begin
    clk = 1;    D = 0;
end

always #5  begin
    clk <= ~clk;
end

initial begin
    #10 D = 1;
    #15 D = 0;
    #20 D = 1;
    #15 $finish;
end


endmodule