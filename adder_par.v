module adder_par(
  input wire [3:0]a,
  input wire [3:0]b,
  output wire [3:0]out,
  output wire carry
);
reg [3:0]g;
reg [3:0]p;
reg [3:0]carr;
reg carryr;
wire [3:0]car;

always @(a or b)
begin
  g <= a&b;
  p <= a|b;
  carr[0] <= 0;
  #1;
  carr[1] <= g[0];
  #1;
  carr[2] <= g[1]|(p[1]&g[0]);
  #1;
  carr[3] <= g[2]|(p[2]&g[1])|(p[2]&p[1]&g[0]);
  #2;
  carryr <= g[3]|(p[3]&g[2])|(p[3]&p[2]&g[1])|(p[3]&p[2]&p[1]&g[0]);
end
assign car = carr;
assign carry = carryr;

adder1 ad0(.a(a[0]), .b(b[0]), .cin(car[0]), .out(out[0]));
adder1 ad1(.a(a[1]), .b(b[1]), .cin(car[1]), .out(out[1]));
adder1 ad2(.a(a[2]), .b(b[2]), .cin(car[2]), .out(out[2]));
adder1 ad3(.a(a[3]), .b(b[3]), .cin(car[3]), .out(out[3]));
endmodule