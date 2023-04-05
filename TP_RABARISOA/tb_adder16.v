`timescale 1ns / 1ps

module stimulus;

	reg [15:0] a;
	reg [15:0] b;
	reg cin;
	wire [15:0] s;
	wire cout;

	adder16 uut (
		a,
		b,
		cin,
		s,
		cout
	);

	initial begin
		$dumpfile("tb_adder16.vcd");
		$dumpvars(0,stimulus);
		a = 0;
		b = 0;
		cin = 0;
		
		#20 a=16'd15; b=16'd12;
		#20 a=16'd243;
		#20 cin=1;
		#20 b=16'd11;
		#20 a=16'd65533; b=16'd1;
		#20 a=16'd65533; b=16'd2;
		#20 cin=0;
	end;
	initial begin
		$monitor("t=%3d a=%d,b=%d,cin=%d,s=%d,cout=%d, \n",$time,a,b,cin,s,cout, );
	end

endmodule;