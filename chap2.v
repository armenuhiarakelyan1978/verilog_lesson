module ex1_ex2;
reg [7:0] lat;
reg [15:0] l1;
reg [3:0] neg_num;
reg [15:0] hex_num;
reg [0:511] st1;
reg [255:0] st2;
reg [255:0] st3;
reg [255:0] st4;
initial
begin
	lat=8'd123;
	l1=16'hx;
	neg_num=-4'd2;
	hex_num='h1234;
	$display("123 binary number is %b\n", lat);
	//answer 8'b0111_1011
	$display("hex unknown number with all x's %h\n", l1);
	//answer xxxx
	//answer 1110
	$display("binary  negative number %b", neg_num);
	//answer 1234
	$display("an unsigned hex number is %h", hex_num); 
	st1="This is a string displaying the % sign";
	st2="out=in1+in2";
	st3="Please ring a bell \\007";
	st4="This is a backslash\\character\\n";
	$display("st1 is %s\n st2 is %s\n st3 is %s\n st4 is %s\n", st1, st2, st3, st4);

	
end

endmodule





/*ex3 Are this legal identifier
system1 yes
1reg    no
$latch  no
exec$   yes

*/

/*ex 4

Declare the following variable
a.wire [7:0] a_in;
b.reg [31:0] address;
address='d3;
c.integer counter;
d.time snap_shot;
e.integer delays [19:0];
f.reg [63:0] membyte [0:255];
g.parameter cache_size=512;

*/
//ex 5
`define MEM_SIZE 1024
module out1;
reg [3:0] latch;
reg [2:0] in_reg;
initial
begin
	latch=4'd12;
 	in_reg=3'd2;
	//answer 4'd12 binary number is  1100	
	$display("The  current value of latch=%b\n", latch);
	//answer 3'd2 binary number is 010
	$monitor($time,"In register value=%b\n",in_reg[2:0]);
	//answer mem_size hex number is 400
	$display("The maximum memory size is %h\n",`MEM_SIZE);
end
endmodule

