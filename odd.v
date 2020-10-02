
module odd(
	input [3:0] In,
	output [3:0] Out
);

assign Out = In[0] ? In : 4'd0;
endmodule
