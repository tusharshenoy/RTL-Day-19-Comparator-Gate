//Testbench code for 2 Bit Comparator
module comparator2bit_tb();

reg [1:0]A,B;
wire AeB,AgB,AlB;

comparator2bit dut(.A(A),.B(B),.AeB(AeB),.AgB(AgB),.AlB(AlB));

initial begin
   A=2'b00;B=2'b11;
#5 A=2'b01;B=2'b10;
#5 A=2'b10;B=2'b01;
#5 A=2'b11;B=2'b00;
#5 A=2'b00;B=2'b00;
//Add More Test Cases Here
#5 $finish;
end

endmodule

