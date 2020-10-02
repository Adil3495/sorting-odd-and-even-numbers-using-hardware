module mm5(input [3:0] A,B,C,D,E,output [3:0] A1,A2,A3,A4,A5);

wire [3:0] p1,p2,p3,p4,min2;

mm4 k1(A,B,C,D,p1,p2,p3,p4);
mm k3(p1,E,A1,min2);
mm4 k2(min2,p2,p3,p4,A2,A3,A4,A5);

endmodule