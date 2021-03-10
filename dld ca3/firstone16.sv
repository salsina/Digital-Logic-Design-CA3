module firstone16(input[15:0]a,output[15:0]w);
  wire [0:15] w1;
  assign w1[15]=0;
  genvar i;
  generate for(i=15;i>-1;i = i-1)begin
    firstone f(a[i],w1[i],w[i],w1[i-1]);
  end
endgenerate
endmodule
