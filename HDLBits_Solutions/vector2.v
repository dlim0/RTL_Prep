module top_module( 
    input [31:0] in,
    output [31:0] out );//

    // assign out[31:24] = ...;
    assign {out[31:24], out[23:16], out[15:8], out[7:0]} = {in[7:0], in[15:8], in[23:16], in[31:24]};
  //ONE thing I would change is that out can be shortened because the entire vector is being used
  //for SV, using a bit shift operator would make this a much easier task
endmodule
