module dflop (RST, SET, STATE, CLOCK, DATA_IN); 
      input RST; 
      input SET; 
      input CLOCK; 
      input DATA_IN; 
      output STATE; 
 
      reg STATE; 
 
always @ ( RST or SET )  
case ({RST,SET}) 
      2'b00:     assign STATE = 1'b0; 
      2'b01:     assign STATE = 1'b0; 
      2'b10:     assign STATE = 1'b1; 
      2'b11:     deassign STATE; 
endcase 
 
always @ ( posedge CLOCK ) 
begin 
      STATE = DATA_IN; 
end 
 
endmodule 
