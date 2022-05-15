`timescale 1ns / 1ns
module adder1(
  input wire a,
  input wire b,
  input wire cin,
  output wire out,
  output wire cout
);
reg d;
reg q;
always @(a or b or cin)
begin
    q <= #3 (a&b)|(b&cin)|(a&cin);
    d <= #6 a^b^cin;
end
assign out = d;
assign cout = q;
endmodule