module dflop (RST, STATE, CLOCK, DATA_IN); 
      input RST; 
      input CLOCK; 
      input DATA_IN; 
      output STATE; 
 
      reg STATE; 
 
always @ ( RST  )
case ({RST}) 
      1'b0:     assign STATE =1'b0; 
      1'b1:     deassign STATE; 
endcase 
 
always @ ( posedge CLOCK )
begin 
      STATE = DATA_IN; 
end 
 
endmodule 
