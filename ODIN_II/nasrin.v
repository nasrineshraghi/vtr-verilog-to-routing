`timescale 1ns / 1ps

module aderr4(a, b,z,y);
    input [3:0] a;
    input [3:0] b;
    output [1:0] z;
	 output [1:0] y;
	 
	 
	assign y= a[ 0 +: 2] & b[ 0 +: 2]; 
   assign z= a[ 2 +: 2] | b[ 2 +: 2]; 
endmodule
