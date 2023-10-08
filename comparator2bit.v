//Verilog Code for 2 Bit Comparator
module comparator2bit(A,B,AeB,AgB,AlB);

input [1:0]A,B;
output  AeB,AgB,AlB;

wire [11:0]w;
not N1(w[0],A[1]);
not N2(w[1],A[0]);
not N3(w[2],B[1]);
not N4(w[3],B[0]);

and A1(w[4],A[0],w[2],w[3]);
and A2(w[5],A[1],w[2]);
and A3(w[6],A[1],A[0],w[3]);

or O1(AgB,w[4],w[5],w[6]);

xnor XNO1(w[7],A[0],B[0]);
xnor XNO2(w[8],A[1],B[1]);

and A7(AeB,w[7],w[8]);

and A4(w[9],w[0],w[1],B[0]);
and A5(w[10],w[1],B[1],B[0]);
and A6(w[11],w[0],B[1]);

or O2(AlB,w[9],w[10],w[11]);

endmodule







