module FlipflopAssign ( reset, din, clk, qout);
output qout;
input reset;
input din;
input clk;
always @ (reset) 
begin
if (reset)
assign qout = 0;
else 
deassign qout;
end
always @ (posedge clk) 
begin
qout = din;
end
endmodule
