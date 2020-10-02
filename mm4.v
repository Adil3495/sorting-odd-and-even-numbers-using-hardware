module mm4(input [3:0] A,B,C,D,output [3:0] A1,A2,A3,A4);

wire [3:0] max1,mid1,min1,min2;

mmm k1(A,B,C,max1,mid1,min1);
mm k3(max1,D,A1,min2);
mmm k2(min2,mid1,min1,A2,A3,A4);

endmodule