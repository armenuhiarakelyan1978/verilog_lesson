module D_FF (output q,
input d,
input clk,
input reset);
reg q;
always @(posedge reset or negedge clk)
if(reset)
q <= 1'b0;
else
q<=d;
endmodule