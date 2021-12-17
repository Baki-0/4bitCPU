`timescale 1ns / 1ps
module CPUtest;

reg clk;
reg [3:0] In;
wire [3:0] HEX;

CPU test(clk, In, HEX);

initial begin
    $dumpfile("CPUtest.vcd");
    $dumpvars(0, CPUtest);
    $monitor("%t: clk = %b, IN = %d, HEX = %h",$time, clk, In, HEX);
end

initial begin
    clk = 1;    IN = 4'b0011;
end

always #5  begin
    clk <= ~clk;
end

endmodule