module even(
	input [3:0] In,
	output [3:0] Out
);

assign Out = In[0] ? 4'd0 : In;
endmodule
