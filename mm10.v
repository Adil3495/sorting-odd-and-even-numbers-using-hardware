module mm10(input [3:0] A,B,C,D,E,F,G,H,I,J, output [3:0] A1,A2,A3,A4,A5,A6,A7,A8,A9,A10);

wire [3:0] p1,p2,p3,p4,p5,p6,p7,p8,p9,min2;

mm9 k1(A,B,C,D,E,F,G,H,I,p1,p2,p3,p4,p5,p6,p7,p8,p9);
mm k3(p1,J,A1,min2);
mm9 k2(min2,p2,p3,p4,p5,p6,p7,p8,p9,A2,A3,A4,A5,A6,A7,A8,A9,A10);

endmodule