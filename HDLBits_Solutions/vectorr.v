module top_module( 
    input [7:0] in,
    output [7:0] out
);
    assign out = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};
  //in SV you can again just shift or for longer implementations you'd want a for loop inside always_comb
endmodule
