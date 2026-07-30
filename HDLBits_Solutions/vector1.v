`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );

    assign out_hi = in [15:8];
  assign out_lo[7:0] = in[7:0]; //no need to declare the range of out_lo because we're using the entire vector
  //there is also a cleaner implementation that utilizes the fact that the vectors fit cleanly into one another
  //which would be either that total outputs going are >= inputs and the line is assign {out_hi, out_lo} = in;
  //right is lsb and msb, so it'd put the lo/hi in the correct orientation (like how all verilog convention is)
endmodule
