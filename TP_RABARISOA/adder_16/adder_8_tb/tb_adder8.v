`timescale 1ns / 1ps

module stimulus;

	reg [7:0] a;
	reg [7:0] b;
	reg cin;
	wire [7:0] s;
	wire cout;

	adder8 uut (
		a,
		b,
		cin,
		s,
		cout
	);

	initial begin
		$dumpfile("tb_adder8.vcd");
		$dumpvars(0,stimulus);
		a = 0;
		b = 0;
		cin = 0;
		
		#20 a=8'b00000001;b=8'b00000001;
		#20 a=8'b00000010;b=8'b00000011;
		#20 a=8'b10000001;b=8'b10000001;
		#20 a=8'b00001111;b=8'b11110000; cin=1;
		#20 a=8'b00001110;
		#20;
	end;
	initial begin
		$monitor("t=%3d a=%d,b=%d,cin=%d,s=%d,cout=%d, \n",$time,a,b,cin,s,cout, );
	end

endmodule;