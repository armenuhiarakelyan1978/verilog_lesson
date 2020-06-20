`include "D_FF.v"
module T_FF (
    output q,
    input clk,
    input reset
);
wire d;

D_FF dff0(q, d, clk, reset);
not n1(d, q);

endmodule