module MFC_always(input [15:0]A,B,output logic eq,gt,ae,output logic[3:0]d);
  integer i=0;
  logic [3:0]d1;
  always @(A,B) begin
    eq=0;gt=0;ae=0;
    if(A==B)
      eq = 1;
    if(eq==1 || A==~B+1'b 1)
      ae = 1;
    if(A[15]==B[15] && A>B)
      gt = 1;
    if(A[15]== 0 && B[15]==1)
      gt=1;
    d1=0;
    for(i=0;i<16;i=i+1)begin
      if(A[i] !=B[i])
        d1=i;
    end
    end
    assign#107 d=d1;
endmodule