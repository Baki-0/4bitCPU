# 4bitCPU
大学の実験で作った4bitCPUをFPGAで実装

使用方法
```
$iverilog -s CPUtest *.v
$vvp a.out
$gtkwave CPUtest.vcd
```
