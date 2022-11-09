`include "rca_2.v"
module add_sub(A,B,M,S,Cout);
    input [1:0]A,B;
    output [1:0]S;
    input M;
    output Cout;

    wire Cout1,d,Cout2;
    wire [1:0]p,q,Bb;

    assign Bb[0] = B[0]^M;
    assign Bb[1] = B[1]^M;

    rca_2 M1(.A(A),.B(Bb),.Cin(M),.Coutt(Cout1),.S(p));
    assign d = !Cout1&M;

    assign q[0] = p[0]^d;
    assign q[1] = p[1]^d;

    rca_2 M2(.A(q),.B(2'b0),.Cin(d),.Coutt(Cout2),.S(S));
    assign Cout = !M & Cout1;
   

endmodule