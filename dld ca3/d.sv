module d(input[15:0]A,B,output [3:0]D);
  wire [15:0] w1,w2;
  xor16 X(A,B,w1);
  firstone16 f1(w1,w2);
  encoder16to4 enc(w2,D);
endmodule
   
