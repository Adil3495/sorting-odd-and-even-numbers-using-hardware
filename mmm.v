module mmm(input [3:0] A,B,C,output [3:0] max,mid,min);

wire [3:0] max1,min1,min2;

mm m1(A,B,max1,min1);
mm m2(max1,C,max,min2);
mm m3(min2,min1,mid,min);

endmodule