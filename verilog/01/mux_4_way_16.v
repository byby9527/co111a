`ifndef mux_16
  `include "mux_16.v"
`endif
`define mux4way16 1

module mux4way16(
    input  [15:0] a,
    input  [15:0] b,
    input  [15:0] c,
    input  [15:0] d,
    input  [1:0]  select,
    output [15:0] out
);

    // Put your code here

endmodule
