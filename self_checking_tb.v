module tb;
//Input and Output array
reg [3:0] In[9:0];
reg [3:0] Out[9:0];
//Input anr Output ports
reg [3:0] A_in,B_in,C_in,D_in,E_in,F_in,G_in,H_in,I_in,J_in;
wire [3:0] A_out,B_out,C_out,D_out,E_out,F_out,G_out,H_out,I_out,J_out;
//Even odd array
reg [3:0] even[9:0];
reg [3:0] odd[9:0];
reg [3:0] temp;

//Loop variables
integer i,j;

integer matched, mismatched;
integer item_count;

//DUT instantiation
arrange dut(
	 A_in,B_in,C_in,D_in,E_in,F_in,G_in,H_in,I_in,J_in,
	 A_out,B_out,C_out,D_out,E_out,F_out,G_out,H_out,I_out,J_out
);

always @(A_in,B_in,C_in,D_in,E_in,F_in,G_in,H_in,I_in,J_in)
begin
	In[0]=A_in; In[1]=B_in; In[2]=C_in;
	In[3]=D_in; In[4]=E_in; In[5]=F_in;
	In[6]=G_in; In[7]=H_in; In[8]=I_in;
	In[9]=J_in;
end


initial
begin
	matched=0;
	mismatched=0;
	item_count=20;

	repeat(item_count)
begin
	 {A_in,B_in,C_in,D_in,E_in,F_in,G_in,H_in,I_in,J_in}={2{$random}};
	 #1;
	 $display(A_in,":",B_in,":",C_in,":",D_in,":",E_in,":",F_in,":",G_in,":",H_in,":",I_in,":",J_in,"**",A_out,":",B_out,":",C_out,":",D_out,":",E_out,":",F_out,":",G_out,":",H_out,":",I_out,":",J_out);
	#1;
       golden;
	compare;       
end
//Generating Reports
	$display("Matched = %d",matched);
	$display("Mismatched = %d",mismatched);

	if(mismatched==0)
		$display("************Test Passed************");
	else
		$display("*************Test Failed***********");
	if((matched + mismatched)!=item_count)
		$display("[Error] Item count did not matched");

 #10;  //Drain_Time
 $finish;
 end


//Genetaring Golden Values
task golden;
	begin
		for(i=0;i<10;i=i+1)
		begin
			if(In[i][0]==0) //Even number
			begin
				even[i]=In[i];
				odd[i]=4'd0;
			end
			else //Odd number
			begin
				odd[i]=In[i];
				even[i]=4'd0;
			end
		end
//Even sorting in descending
	for(i=0;i<10;i=i+1)
	begin
		for(j=0;j<10-i-1;j=j+1)
		begin
			if(even[j]<even[j+1])
			begin
				temp=even[j];
				even[j]=even[j+1];
				even[j+1]=temp;
			end
		end
	end

//Odd sorting in ascending
	for(i=0;i<10;i=i+1)
	begin
		for(j=0;j<10;j=j+1)
		begin
			if(odd[j]>odd[j+1])
			begin
				temp=odd[j];
				odd[j]=odd[j+1];
				odd[j+1]=temp;
			end//end_if
		end
	end
//Output
	for(i=0;i<10;i=i+1)
	begin
		Out[i]=even[i]+odd[i];
	end
end//end_of_task

endtask

//Comparing golden values with the dut output
task compare;
	begin
	if((A_out==Out[0])&(B_out==Out[1])&(C_out==Out[2])&(D_out==Out[3])&(E_out==Out[4])&(F_out==Out[5])&(G_out==Out[6])&(H_out==Out[7])&(I_out==Out[8])&(J_out==Out[9]))
	begin
	matched=matched+1;
	end	
	else
	begin
		mismatched=mismatched+1;
	end
end//end_of_task

endtask



endmodule
