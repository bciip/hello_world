
module hello_world (
  input clk_i,
  input rst_ni,

  input  tlul_pkg::tl_h2d_t tl_i,
  output tlul_pkg::tl_d2h_t tl_o

);

  import hello_world_reg_pkg::*;

  hello_world_reg2hw_t reg2hw;
  hello_world_hw2reg_t hw2reg;

  // Connect registers to hw
  assign hw2reg.flip_reg.de = 1'b1;

  hello_world_core u_core(
    .orig_i(reg2hw.orig_reg.q),
    .flip_o(hw2reg.flip_reg.d) 
  );

  // Register module
  hello_world_reg_top u_reg (
    .clk_i,
    .rst_ni,

    .tl_i,
    .tl_o,

    .reg2hw,
    .hw2reg,

    .intg_err_o (),
    .devmode_i  (1'b1)
  );

//  always @(posedge clk_i) begin 
//     if (reg2hw.orig_reg.q!= 0) begin
//        $display ("NON-ZERO 0x%0h, 0x%0h, rst=0x%0h, en=0x%0h",reg2hw.orig_reg.q, hw2reg.flip_reg.d,rst_ni,hw2reg.flip_reg.de);
//     end
//
//  end



endmodule
