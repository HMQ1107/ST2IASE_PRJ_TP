`timescale 1ns / 1ps

module stimulus;
	// Inputs
	reg a;
	reg b;
	reg c;
	// Outputs
	wire y;
	wire z;
	// Instantiate the Unit Under Test (UUT)
	adder1 uut (
		a,
		b,
		c,
		y,
		z
	);
 
	initial begin
	$dumpfile("tb_adder1.vcd");
    $dumpvars(0,stimulus);
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
 
		#20 a = 1;
		#20 b = 1;
		#20 c = 1;
		#20 a = 0;
		#20 a = 1;
		#20 a = 0; b = 0;
	
 
	end  
 
		initial begin
		 $monitor("t=%3d a=%d,b=%d,c=%d,y=%d,z=%d, \n",$time,a,b,c,y,z, );
		 end
 
endmodule
 
 
