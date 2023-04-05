`timescale 1ns / 1ps

module stimulus;
  reg [15:0] a, b;
  wire [31:0] result;
  
  multiplier16 dut(
		a,
		b,
		result
		);
  
	initial begin
		$dumpfile("tb_multiplier16.vcd");
		$dumpvars(0,stimulus);
		a = 0;
		b = 0;
		#20 a=16'd65535;b=16'd65535;
		#20 a=32767;
		#20;
	end;
	initial begin
		$monitor("t=%3d a=%d,b=%d,res=%d\n",$time,a,b,result, );
	end

endmodule