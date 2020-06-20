/*4.5 exercises 1 main components of module



	*module name, port List, port declarations(if port pressent),parameters
	*Declaration of wires, regs and other variables
	*Data flow statements(assign)
	*instantiation of low lower level modules
	*always and initial blocks
	*task and functions
        *endmodule
 mandatory components are module and endmodule */

/*4.5 exercises 2
*A stimulus block of the module does not contain
any I/O port.It is called a test bench.A stimulus
block is used  to test the design block.We declare I/O
ports as a  variables and instantiate the module, that we
will be testing. */

//4.5 exercises 3

module shift_reg( output  wire  [3:0] reg_out,
input  [3:0] reg_in,
input clock);
endmodule

//4.5exercises 4 connect port by order list
module stimulus_l;
reg CLK;
reg [3:0] REG_IN;
wire [3:0] REG_OUT;
shift_reg sr1 (REG_OUT, REG_IN, CLK);
endmodule

//4.5exercises 5 connect port by name 
module stimulus_n;
reg CLK;
reg [3:0] REG_IN;
wire [3:0] REG_OUT;
shift_reg sr1 (.reg_out(REG_OUT),
        .reg_in	(REG_IN),
        .clock  (CLK));
endmodule


//4.5exercises 6 write hierarchical names for variables REG_IN, REG_OUT, CLK
//stimulus.sr1.REG_OUT, stimulus.sr1.REG_IN, stimulus.sr1.CLK
module stimulus;
reg CLK;
reg [3:0] REG_IN;
wire[3:0] REG_OUT;
shift_reg sr1 (REG_OUT, REG_IN, CLK);
initial
begin
	$display("Hierarchical  name %m:");
end
endmodule
//4.5 exercises 7 write hierarchical names stimulus, stimulus.sr1,
//stimulus.clock, stimulus.reg_in, stimulus.reg_out
