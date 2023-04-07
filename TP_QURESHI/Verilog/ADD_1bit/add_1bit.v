module add_1bit (a, b, cin, cout, s);
    input a;
    input b;
    input cin;
    output cout;
    output s;


    assign {cout, s} = a + b + cin;

endmodule : add_1bit