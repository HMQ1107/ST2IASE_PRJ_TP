module tb_multiplier8;
  reg [7:0] a, b;
  wire [15:0] result;
  
  multiplier8 dut(
		a,
		b,
		result
		);
  
	initial begin
		$dumpfile("tb_multiplier8.vcd");
		//$dumpvars(0,stimulus);
		a = 0;
		b = 0;
		#20 a=8'b00000001;b=8'b00000001;
		#20 a=8'b00000010;b=8'b00000011;
		#20 a=8'b10000001;b=8'b10000001;
		#20 a=8'b00001111;b=8'b11110000;
		#20 a=8'b00001110;
		#20;
	end;
	initial begin
		$monitor("t=%3d a=%d,b=%d,res=%d\n",$time,a,b,result, );
	end

endmodule