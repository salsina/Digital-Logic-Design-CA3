module eq_ae_d_outputs(input [15:0]A,B,output EQ,AE,[3:0]D);
  wire x;
  wire[0:15] eqs;
  wire[15:0] invA,complement;
  eq16 eq1(A,B,EQ);
  genvar i;
  generate for(i=0;i<16;i = i+1) begin
    not#7 N1(invA[i],A[i]);
  end
  endgenerate
  adder16 add_1(invA,1,complement);
  eq16 eq2(complement,B,x);  
  or#21 O1(AE,EQ,x);
  
endmodule

