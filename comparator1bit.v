//Verilog Code for 1 Bit Comparator
module comparator1bit(A,B,AeB,AgB,AlB);

input A,B;
output AeB,AgB,AlB;

wire w1,w2;

not N1(w1,A);
not N2(w2,B);

and NA1(AlB,w1,B);
and NA2(AgB,w2,A);

nor NO1(AeB,AlB,AgB);

endmodule
