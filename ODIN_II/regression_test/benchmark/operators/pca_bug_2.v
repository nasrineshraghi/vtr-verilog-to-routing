module d_ff ( d,clk,r, q, q_b );

	input d, clk, r;

  	output q, q_b;

  	reg q, b;

	always @( r ) 
	begin

		if( r )
		begin

		  assign q = 1’b0;
		  assign q_b = 1’b1;

		end else 

		 begin
			deassign q;
			deassign q_b;
		 end
		end

	always @( posedge clk ) 
	begin 
		q = d;
		q_b = ~d;
	end
	endmodule
