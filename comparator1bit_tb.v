//Testbench code for 1 Bit Comparator
module comparator1bit_tb();

reg A,B;
wire AeB,AgB,AlB;

comparator1bit dut(.A(A),.B(B),.AeB(AeB),.AgB(AgB),.AlB(AlB));

initial begin
   A=1'b0;B=1'b0;
#5 A=1'b0;B=1'b1;
#5 A=1'b1;B=1'b0;
#5 A=1'b1;B=1'b1;
#5 $finish;
end

endmodule
