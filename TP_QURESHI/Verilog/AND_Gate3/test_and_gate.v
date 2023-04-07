`timescale 1ns / 1ps
module stimulus;
	// Inputs
	reg x;
	reg y;
	reg z;
	// Outputs
	wire r;
	// Instantiate the Unit Under Test (UUT)
	and_gate uut (
		x, 
		y,
		z,
		r
	);
 
	initial begin
	$dumpfile("test.vcd");
    $dumpvars(0,stimulus);
		// Initialize Inputs
		x = 0;
		y = 0;
		z = 0;
 
	#10 x = 1;

	#20 y = 1;

	#30 z = 0;

	#40 x = 1;

	#50 z = 1;
 
	end  
 
		initial begin
		 $monitor("t=%3d x=%d,y=%d,z=%d,r=%d \n",$time,x,y,z,r);
		 end
 
endmodule
 
 
