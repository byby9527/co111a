`ifndef mux4way16
  `include "mux4way16.v"
`endif
`define mux8way16 1

module mux8way16(
    input  [15:0] a,
    input  [15:0] b,
    input  [15:0] c,
    input  [15:0] d,
    input  [15:0] e,
    input  [15:0] f,
    input  [15:0] g,
    input  [15:0] h,
    input  [2:0]  select,
    output [15:0] out
);

    // Put your code here

endmodule
