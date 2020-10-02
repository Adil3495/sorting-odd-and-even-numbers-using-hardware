module mm(input [3:0] A,B, output [3:0] max,min);

assign max = A>B ? A : B;
assign min = A<B ? A : B;


endmodule