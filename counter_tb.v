`timescale 1s/100ms
`include "rip_counter.v"
module counter_tb();
reg clk;
reg reset;
wire [3:0] q;
rip_counter ir(q, clk, reset);
initial
 clk = 1'b0;
always 
 #5 clk = ~clk;
 initial
begin
  reset=1'b1;
  #15 reset = 1'b0;
  #180 reset = 1'b1;
  #10 reset = 1'b0;
  #20 $finish;
end
initial 
begin
$monitor ($time, "  Output q = %d , clk=%d , reset=%d" , q , clk, reset );
$dumpfile("counter_tb.vcd");
$dumpvars(0, counter_tb);
clk=0; reset=0; #5;
clk=0; reset=1; #100;
clk=1; reset=0; #105;
clk=0; reset=1; #20;
clk=0; reset=0; #5;
clk=0; reset=1; #10;
clk=1; reset=0; #15;
clk=0; reset=1; #20;
$finish;
end
endmodule