module add_8bit (a,b,cin, cout, s);
    input [7:0] a;
    input [7:0] b;

    output [7:0] s;
    output cout;

    wire [6:0] c;

    add_1bit add0 (a[0], b[0], cin, s[0], c[0]);
    add_1bit add1 (a[1], b[1], c[0], s[1], c[1]);
    add_1bit add2 (a[2], b[2], c[1], s[2], c[2]);
    add_1bit add3 (a[3], b[3], c[2], s[3], c[3]);
    add_1bit add4 (a[4], b[4], c[3], s[4], c[4]);
    add_1bit add5 (a[5], b[5], c[4], s[5], c[5]);
    add_1bit add6 (a[6], b[6], c[5], s[6], c[6]);
    add_1bit add7 (a[7], b[7], c[6], s[7], cout);

endmodule : add_8bit