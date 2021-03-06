module mm8(input [3:0] A,B,C,D,E,F,G,H,output [3:0] A1,A2,A3,A4,A5,A6,A7,A8);

wire [3:0] p1,p2,p3,p4,p5,p6,p7,min2;

mm7 k1(A,B,C,D,E,F,G,p1,p2,p3,p4,p5,p6,p7);
mm k3(p1,H,A1,min2);
mm7 k2(min2,p2,p3,p4,p5,p6,p7,A2,A3,A4,A5,A6,A7,A8);

endmodule