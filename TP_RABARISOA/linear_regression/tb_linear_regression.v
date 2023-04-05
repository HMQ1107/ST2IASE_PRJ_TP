`timescale 1ns / 1ps

module stimulus;
  
  // Entrées
  reg [15:0] size;
  // Sorties
  wire [31:0] price;
  
  // Instanciation du module
  linear_regression dut(
	size,
	price
	);
	
	initial begin
		$dumpfile("tb_linear_regression.vcd");
		$dumpvars(0,stimulus);
		size = 0;
		
		#20 size=16'd32;
		#20 size=16'd100;
		#20 size=16'd50;
		#20;
	end;
	initial begin
		$monitor("t=%3d size=%d,price=%d, \n",$time,size,price );
	end
endmodule
