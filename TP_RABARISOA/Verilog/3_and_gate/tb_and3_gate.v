`timescale 1ns / 1ps
module stimulus;
	// Inputs
	reg a;
	reg b;
	reg c;
	// Outputs
	wire y;
	// Instantiate the Unit Under Test (UUT)
	and3_gate uut (
		a, 
		b, 
		c,
		y
	);
 
	initial begin
	$dumpfile("tb_and3_gate.vcd");
    $dumpvars(0,stimulus);
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
 
	#20 a = 1;
	#20 b = 1;
	#20 c = 1;	
	#20 a = 0;
	#20 b = 0; c = 0;
	#20 b = 1;
	#20;
 
	end  
 
	initial begin
		$monitor("t=%3d a=%d,b=%d,c=%d,y=%d \n",$time,a,b,c,y, );
	end
 
endmodule
 
 
