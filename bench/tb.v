//`include "add_sub.v"
module tb;
    reg [1:0]A,B;
    wire [1:0]S;
    reg M;
    wire Cout;
    add_sub DUT(.A(A), .B(B), .M(M), .Cout(Cout), .S(S));
    
    integer i,j,k;
    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0,tb);
        for(i=0;i<2;i=i+1) begin
            for(j=0; j<4 ;j=j+1) begin
                for(k=0;k<4;k=k+1) begin
                  A = j;
                  B = k;
                  M = i;
                  #100;
                end            
            end
    end
    end
    initial $monitor("A = %d, B = %d, M = %d, Cout = %b, S = %b",A,B,M,Cout,S);
endmodule