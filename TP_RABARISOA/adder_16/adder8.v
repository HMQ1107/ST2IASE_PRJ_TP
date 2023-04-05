module adder8(a, b, cin, s, cout);
    output cout; //MSB, determines if answer is positive or negative
    output [7:0] s;
    input [7:0] a;
    input [7:0] b;
    input cin;
          
    wire [7:0] carry;
	
	adder1 add0(a[0],b[0],cin     ,s[0],carry[0]);
	adder1 add1(a[1],b[1],carry[0],s[1],carry[1]);
	adder1 add2(a[2],b[2],carry[1],s[2],carry[2]);
	adder1 add3(a[3],b[3],carry[2],s[3],carry[3]);
	adder1 add4(a[4],b[4],carry[3],s[4],carry[4]);
	adder1 add5(a[5],b[5],carry[4],s[5],carry[5]);
	adder1 add6(a[6],b[6],carry[5],s[6],carry[6]);
	adder1 add7(a[7],b[7],carry[6],s[7],carry[7]);

     assign cout = carry[7];
   
endmodule