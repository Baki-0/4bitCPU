`timescale 1ns / 1ps
module ALUtest;

reg [3:0] A;
reg [3:0] B;
reg clk;
wire [3:0] S;
wire ZF;

ALU test(A,B,clk,S,ZF);

initial begin
    $dumpfile("ALUtest.vcd");
    $dumpvars(0, ALUtest);
    $monitor("%t: clk = %b, A = %d, B = %d, S = %d, ZF = %b",$time, clk, A, B,S,ZF);
end

initial begin
    clk = 1;    A = 0;  B=0;
end

always #5  begin
    clk <= ~clk;
end

initial begin
    #10 A = 4'b1010;
    #15 B = 4'b0010;
    #20 A = 4'b0100;
    #15 $finish;
end


endmodule