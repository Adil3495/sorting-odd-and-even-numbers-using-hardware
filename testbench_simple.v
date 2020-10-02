module tb;

reg [3:0] A_in,B_in,C_in,D_in,E_in,F_in,G_in,H_in,I_in,J_in;
wire [3:0] A_out,B_out,C_out,D_out,E_out,F_out,G_out,H_out,I_out,J_out;

arrange dut(
	 A_in,B_in,C_in,D_in,E_in,F_in,G_in,H_in,I_in,J_in,
	 A_out,B_out,C_out,D_out,E_out,F_out,G_out,H_out,I_out,J_out
);

initial
begin
	repeat(20)
begin
	 {A_in,B_in,C_in,D_in,E_in,F_in,G_in,H_in,I_in,J_in}={2{$random}};
	 #1;
	 $display(A_in,":",B_in,":",C_in,":",D_in,":",E_in,":",F_in,":",G_in,":",H_in,":",I_in,":",J_in,"**",A_out,":",B_out,":",C_out,":",D_out,":",E_out,":",F_out,":",G_out,":",H_out,":",I_out,":",J_out);
 end

 #10;
 $finish;
 end

endmodule
