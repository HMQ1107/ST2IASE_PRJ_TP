`timescale 1ns / 1ps
module stimulus;
	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	// Outputs
	wire [31:0] cout;
	// Instantiate the Unit Under Test (UUT)
	add_1bit uut (
		a,
		b,
		cout
	);

	initial begin
	$dumpfile("test.vcd");
    $dumpvars(0,stimulus);
		// Initialize Inputs
		a = 0; b = 0;

	#10 a = 0; b = 16;

	#10 a = 16; b = 16;

	#10 a = 58497

	end

		initial begin
		 $monitor("t=%3d a=%d,b=%d,res=%d\n",$time,a,b,cout);
		 end

endmodule