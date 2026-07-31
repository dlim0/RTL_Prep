module top_module ( input a, input b, output out );
  mod_a instance1 (a,b,out); //connection by position 
endmodule

//second implementiation
module top_module2 ( input a, input b, output out );
  mod_a instance2 (.out(out),.in1(a),.in2(b)); //by name (I like position better) 
endmodule
