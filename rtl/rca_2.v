`include "full_adder.v"
module rca_2(A,B,Cin,Coutt,S);
    input [1:0]A,B;
    input Cin;
    output [1:0]S;
    output Coutt;

    wire C0;

    full_adder M1 (.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]), .Cout(C0));
    full_adder M2 (.A(A[1]), .B(B[1]), .Cin(C0), .S(S[1]), .Cout(Coutt));

endmodule