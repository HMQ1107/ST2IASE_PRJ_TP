module linear_regression(input [15:0] X0, input [15:0] X1, input [15:0] X2, output [31:0] y);

reg [15:0] INTERCEPT = 16'd-8152.937710156519;
reg [15:0] SLOPE0 = 16'd717.2583697096838;
reg [15:0] SLOPE1 = 16'd36824.195974256305;
reg [15:0] SLOPE2 = 16'd101571.84002157034;

wire [31:0] prod_res0;
wire [31:0] prod_res1;
wire [31:0] prod_res2;

wire c_int_0,c_out_0;
wire c_int_1,c_out_1;
wire c_int_2,c_out_2;

wire [31:0] sum0,sum1,sum2,;

multiplier16 prod0(X0,SLOPE0,prod_res0);
multiplier16 prod1(X1,SLOPE1,prod_res1);
multiplier16 prod2(X2,SLOPE2,prod_res2);

adder16 adder0(prod_res0[15:0],INTERCEPT,16'd0,sum0[15:0],c_int_0);
adder16 adder1(prod_res0[31:16],16'd0,c_int_0,sum0[31:16],c_out_0);

adder16 adder2(sum0[15:0],prod_res1[15:0],16'd0,sum1[15:0],c_int_1);
adder16 adder3(sum0[31:16],prod_res1[31:16],c_int_1,sum1[31:16],c_out_1);

adder16 adder4(sum1[15:0],prod_res2[15:0],16'd0,sum2[15:0],c_int_2);
adder16 adder5(sum1[31:16],prod_res2[31:16],c_int_2,sum2[31:16],c_out_2);

assign price = sum2;

end module;
