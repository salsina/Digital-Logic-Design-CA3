module tb();
  logic [15:0]a,b;
  logic [3:0]d1,d2;
  logic eq1,ae1,gt1,eq2,ae2,gt2;
  MFC cut1(a,b,eq1,gt1,ae1,d1);
  MFC_always cut2(a,b,eq2,gt2,ae2,d2);
  initial begin
    a =8192;
    b=-8192;
    #1000;
    a =4;
    b=4;
    #1000;
    a =-10;
    b=-13;
    #1000;
    a =4;
    b=-5;
    #1000;  end
endmodule