module adder(input a,b,ci,output co,si);
  wire x,y,z;
  xor#27 X1(x,a,b);
  and#17 A1(y,a,b);
  and#17 A2(z,x,ci);
  or#21 O1(co,y,z);
  xor#27 X2(si,x,ci);
endmodule
