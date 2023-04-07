module add_16bit (a,b,cin, cout, s);
    input [15:0] a;
    input [15:0] b;
    input cin;

    output [15:0] s;
    output cout;

    wire [6:0] c;

    adder8 add1(a[7:0],b[7:0],cin,s[7:0],c);
    adder8 add2(a[15:8],b[15:8],c,s[15:8],cout);

endmodule : add_16bit