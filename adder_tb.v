`timescale 1ns / 1ns

module testbench;

reg [3:0]var_a;
reg [3:0]var_b;
wire [3:0]r_out_par;
wire [3:0]r_out_posl;
wire r_carry_par;
wire r_carry_posl;

//instance of module being studied
adder_par adder_pari(
  .a(var_a),
  .b(var_b),
  .out(r_out_par),
  .carry(r_carry_par)
);
adder_posl adder_posli(
  .a(var_a),
  .b(var_b),
  .out(r_out_posl),
  .carry(r_carry_posl)
);

initial
begin
  $dumpfile("out.vcd");
  $dumpvars(0,testbench);
	
  var_a = 4'h5;
  var_b = 4'h0;
   #30;
  var_a = 4'h1;
  var_b = 4'hA;
   #30;
  var_a = 4'h5;
  var_b = 4'hA;
   #30;
  var_a = 4'h9;
  var_b = 4'h4;
   #30;
  var_a = 4'h9;
  var_b = 4'h9;
   #30;
  var_a = 4'h9;
  var_b = 4'h6;
   #30;
  $finish;
end



endmodule