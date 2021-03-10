module eq(input a,b,eq,output EQ);
  wire w;
  xnor#27 X(w,a,b);
  and#17 A(EQ,w,eq);
endmodule
