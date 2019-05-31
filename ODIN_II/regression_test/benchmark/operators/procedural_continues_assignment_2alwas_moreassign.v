module (Clk, Reset, CntOut);

	input Clk;
	input Reset;

	output CntOut;

	reg Cnt;

	always @(posedge Clk)

	  Cnt = Cnt + 1;



	always @(Reset)

	begin

	  if (Reset)

	    assign Cnt = 0;  
   
	  else

	    deassign Cnt;  
       
	end


	assign CntOut = Cnt;

endmodule

