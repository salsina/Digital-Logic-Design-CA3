module firstone(input a1,a2,output w1,w2);
  wire x;
  or#21 or1(w2,a1,a2);
  not#7 not1(x,a2);
  and#17 and1(w1,x,a1);
endmodule
  
