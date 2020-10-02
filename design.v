module arrange(
	input [3:0] A_in,B_in,C_in,D_in,E_in,F_in,G_in,H_in,I_in,J_in,
	output [3:0] A_out,B_out,C_out,D_out,E_out,F_out,G_out,H_out,I_out,J_out
);

wire [3:0] even_1,even_2,even_3,even_4,even_5,even_6,even_7,even_8,even_9,even_10;

wire [3:0] odd_1,odd_2,odd_3,odd_4,odd_5,odd_6,odd_7,odd_8,odd_9,odd_10;

//Sort connections
wire [3:0] seven_1,seven_2,seven_3,seven_4,seven_5,seven_6,seven_7,seven_8,seven_9,seven_10;

wire [3:0] sodd_1,sodd_2,sodd_3,sodd_4,sodd_5,sodd_6,sodd_7,sodd_8,sodd_9,sodd_10;

//Even numbers
even e_1(A_in,even_1);
even e_2(B_in,even_2);
even e_3(C_in,even_3);
even e_4(D_in,even_4);
even e_5(E_in,even_5);
even e_6(F_in,even_6);
even e_7(G_in,even_7);
even e_8(H_in,even_8);
even e_9(I_in,even_9);
even e_10(J_in,even_10);

//Odd numbers
odd o_1(A_in,odd_1);
odd o_2(B_in,odd_2);
odd o_3(C_in,odd_3);
odd o_4(D_in,odd_4);
odd o_5(E_in,odd_5);
odd o_6(F_in,odd_6);
odd o_7(G_in,odd_7);
odd o_8(H_in,odd_8);
odd o_9(I_in,odd_9);
odd o_10(J_in,odd_10);

//Sorting Even values in descending
mm10 m1(even_1,even_2,even_3,even_4,even_5,even_6,even_7,even_8,even_9,even_10,seven_1,seven_2,seven_3,seven_4,seven_5,seven_6,seven_7,seven_8,seven_9,seven_10);
//Sorting Odd values in ascending
mm10 m2(odd_1,odd_2,odd_3,odd_4,odd_5,odd_6,odd_7,odd_8,odd_9,odd_10,sodd_10,sodd_9,sodd_8,sodd_7,sodd_6,sodd_5,sodd_4,sodd_3,sodd_2,sodd_1);

assign A_out = seven_1 + sodd_1;
assign B_out = seven_2 + sodd_2;
assign C_out = seven_3 + sodd_3;
assign D_out = seven_4 + sodd_4;
assign E_out = seven_5 + sodd_5;
assign F_out = seven_6 + sodd_6;
assign G_out = seven_7 + sodd_7;
assign H_out = seven_8 + sodd_8;
assign I_out = seven_9 + sodd_9;
assign J_out = seven_10 + sodd_10;
endmodule
