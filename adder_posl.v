module adder_posl(
  input wire [3:0]a,
  input wire [3:0]b,
  output wire [3:0]out,
  output wire carry
);
wire [3:0]car;
adder1 ad0(.a(a[0]), .b(b[0]), .cin(1'h0), .out(out[0]), .cout(car[1]));
adder1 ad1(.a(a[1]), .b(b[1]), .cin(car[1]), .out(out[1]), .cout(car[2]));
adder1 ad2(.a(a[2]), .b(b[2]), .cin(car[2]), .out(out[2]), .cout(car[3]));
adder1 ad3(.a(a[3]), .b(b[3]), .cin(car[3]), .out(out[3]), .cout(carry));
endmodule