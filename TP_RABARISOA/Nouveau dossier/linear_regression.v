module linear_regression(
	input [15:0] size,
	output [31:0] price
	);
	
	// y = 10 000 + 5 000 * size
	reg [15:0] INTERCEPT = 16'd10000;
	reg [15:0] SLOPE = 16'd5000;
	
	wire [31:0] prod_res;
	wire c_in,c_int,c_out;
	assign c_in = 0;
	
	multiplier16 prod1(size,SLOPE,prod_res);
	
	adder16 adder1(prod_res[15:0],INTERCEPT,c_in,price[15:0],c_int);
	
	adder16 adder2(prod_res[31:16],16'd0,c_int,price[31:16],c_out);

endmodule
