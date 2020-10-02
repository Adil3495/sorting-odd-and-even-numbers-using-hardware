module mm7(input [3:0] A,B,C,D,E,F,G,output [3:0] A1,A2,A3,A4,A5,A6,A7);

wire [3:0] p1,p2,p3,p4,p5,p6,min2;

mm6 k1(A,B,C,D,E,F,p1,p2,p3,p4,p5,p6);
mm k3(p1,G,A1,min2);
mm6 k2(min2,p2,p3,p4,p5,p6,A2,A3,A4,A5,A6,A7);

endmodule