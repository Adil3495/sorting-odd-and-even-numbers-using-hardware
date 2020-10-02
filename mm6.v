module mm6(input [3:0] A,B,C,D,E,F,output [3:0] A1,A2,A3,A4,A5,A6);

wire [3:0] p1,p2,p3,p4,p5,min2;

mm5 k1(A,B,C,D,E,p1,p2,p3,p4,p5);
mm k3(p1,F,A1,min2);
mm5 k2(min2,p2,p3,p4,p5,A2,A3,A4,A5,A6);

endmodule