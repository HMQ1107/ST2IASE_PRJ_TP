module adder1 (a, b, cin, s, cout);
    input a;
    input b;
	input cin;
    output s;
	output cout;

    assign s = a + b + cin;
	assign cout = a&b | a&cin | b&cin;
endmodule
