`timescale 1ns / 1ps


module Addersub(
input[15:0]a,b,
input M,
output reg[15:0] s,
output reg co);


always @(*)
begin
// for the sum of 2 numbers 
if(M==0)

begin
{co,s}=a+b+16'b0000000000000000;
end
  
// for the subtraction of 2 number
else if(M==1)

begin
{co,s}=a+(16'b1111111111111111^b)+16'b0000000000000001;
  
// to get the number in 2's complement
if(co==0)

begin
{co,s}=(16'b1111111111111111^s)+16'b0000000000000000+16'b0000000000000001;
end

end

end

endmodule