module adder(
  input wire [31:0]a,
  input wire [31:0]b,
  output wire [31:0]out,
  output wire carry
);

assign {carry, out} = a + b;

endmodule