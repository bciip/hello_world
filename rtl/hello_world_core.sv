
module hello_world_core (
    input [31:0] orig_i,
    output [31:0] flip_o
);

// byte-flipped value
  assign flip_o[31:0] = {orig_i[7:0],orig_i[15:8],orig_i[23:16],orig_i[31:24]};

endmodule

