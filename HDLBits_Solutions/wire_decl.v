`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire ab=a &b;
    wire cd=c&d;
    wire outs = ab|cd;
    assign out_n = ~(outs);
    assign out = outs;

endmodule
