module simple_circuit(clk, A, B , Out);
input A;
input B;
input clk;

output Out;     

always @ (posedge clk)
begin
Out  <= A & B;
end

endmodule
