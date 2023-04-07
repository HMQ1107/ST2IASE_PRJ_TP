`timescale 1ns / 1ps
module stimulus;
	// Inputs
	reg a;
	reg b;
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
		a = 0; b = 0;

	#10 a = 0; b = 1;

	#10 a = 1; b = 0;

	#10 a = 1; b = 1;
 
	end  
 
		initial begin
		 $monitor("t=%3d \t %d + %d = %d %d",$time,a,b,s,cout);
		 end
 
endmodule
 
 
