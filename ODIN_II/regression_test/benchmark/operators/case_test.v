module  binary_encoder(x, enable, y);

    input   [1:0]x;
    input   enable;

    output   [3:0] y ;

    reg y;
    
     
    always  @(enable, x[1],x[0])
     
    if (enable == 1'b0) 
    	y=4'b0000;
    else if (x == 2'b00)
    	y = 4'b0001;
    else if (x == 2'b01)
    	y = 4'b0010;
    else if (x == 2'b10)
    	y = 4'b0100;
    else if (x == 2'b11)
    	y = 4'b1000;
     
endmodule	


