module mm9(input [3:0] A,B,C,D,E,F,G,H,I,output [3:0] A1,A2,A3,A4,A5,A6,A7,A8,A9);

wire [3:0] p1,p2,p3,p4,p5,p6,p7,p8,min2;

mm8 k1(A,B,C,D,E,F,G,H,p1,p2,p3,p4,p5,p6,p7,p8);
mm k3(p1,I,A1,min2);
mm8 k2(min2,p2,p3,p4,p5,p6,p7,p8,A2,A3,A4,A5,A6,A7,A8,A9);

endmodule