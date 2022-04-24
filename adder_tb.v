`timescale 1ns / 1ns

module testbench;

reg [31:0]var_a;
reg [31:0]var_b;
wire [31:0]r_out;
wire r_carry;

//instance of module being studied
adder adder_inst(
  .a(var_a),
  .b(var_b),
  .out(r_out),
  .carry(r_carry)
);

initial
begin
  $dumpfile("out.vcd");
  $dumpvars(0,testbench);
  var_a = 32'h55555555;
  var_b = 32'h01010101;
   #10;
  var_a = 32'h55555555;
  var_b = 32'hAAAAAAAA;
   #10;
  var_a = 32'h55555555;
  var_b = 32'hABABABAB;
   #10;
  var_a = 32'h99999999;
  var_b = 32'h05050505;
   #10;
  var_a = 32'h99999999;
  var_b = 32'h67676767;
   #10;
  var_a = 32'h99999999;
  var_b = 32'h66666666;
   #10;
  $finish;
end

endmodule