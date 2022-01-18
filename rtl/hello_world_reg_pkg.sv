// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package hello_world_reg_pkg;

  // Address widths within the block
  parameter int BlockAw = 3;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////

  typedef struct packed {
    logic [31:0] q;
  } hello_world_reg2hw_orig_reg_reg_t;

  typedef struct packed {
    logic [31:0] d;
    logic        de;
  } hello_world_hw2reg_flip_reg_reg_t;

  // Register -> HW type
  typedef struct packed {
    hello_world_reg2hw_orig_reg_reg_t orig_reg; // [31:0]
  } hello_world_reg2hw_t;

  // HW -> register type
  typedef struct packed {
    hello_world_hw2reg_flip_reg_reg_t flip_reg; // [32:0]
  } hello_world_hw2reg_t;

  // Register offsets
  parameter logic [BlockAw-1:0] HELLO_WORLD_ORIG_REG_OFFSET = 3'h 0;
  parameter logic [BlockAw-1:0] HELLO_WORLD_FLIP_REG_OFFSET = 3'h 4;

  // Register index
  typedef enum int {
    HELLO_WORLD_ORIG_REG,
    HELLO_WORLD_FLIP_REG
  } hello_world_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] HELLO_WORLD_PERMIT [2] = '{
    4'b 1111, // index[0] HELLO_WORLD_ORIG_REG
    4'b 1111  // index[1] HELLO_WORLD_FLIP_REG
  };

endpackage
