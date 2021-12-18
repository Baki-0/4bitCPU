`timescale 1ns / 1ps
module Topmoduletest;

reg CLK1,CLK2;
reg [1:0] BTN;
reg [9:0] SW;
wire [7:0] HEX0;
wire [7:0] HEX1;
wire [7:0] HEX2;
wire [7:0] HEX3;
wire [7:0] HEX4;
wire [7:0] HEX5;
wire [9:0] LED;

Topmodule test(CLK1,CLK2,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,BTN,LED,SW);

initial begin
    $dumpfile("Topmoduletest.vcd");
    $dumpvars(0, Topmoduletest);
    $monitor("%t: clk = %b, In = %d, HEX = %h",$time, CLK1, SW, HEX0);
end

initial begin
    CLK1 = 1;
    CLK2 =1;    
    SW = 10'b0000000011;
    BTN = 2'b00;
    #10000
    $finish;
end

always #5  begin
    CLK1 <= ~CLK1;
    CLK2 <= ~CLK2;
end

always #50  begin
    BTN[0] <= ~BTN[0];
end

endmodule