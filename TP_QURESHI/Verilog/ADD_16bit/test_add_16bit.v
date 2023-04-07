`timescale 1ns / 1ps
module stimulus;
	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg cin;
	// Outputs
	wire s;
	wire cout;
	// Instantiate the Unit Under Test (UUT)
	add_1bit uut (
		a,
		b,
		s,
		cout
	);

	initial begin
	$dumpfile("test.vcd");
    $dumpvars(0,stimulus);
		// Initialize Inputs
		a = 0; b = 0; cin = 0;

	#10 a = 0; b = 16;

	#10 a = 16; b = 16; cin = 1;

	#10 a = 16; b = 16; cin = 0;

	end

		initial begin
		 $monitor("t=%3d a=%d,b=%d,cin=%d,s=%d,cout=%d, \n",$time,a,b,cin,s,cout);
		 end

endmodule