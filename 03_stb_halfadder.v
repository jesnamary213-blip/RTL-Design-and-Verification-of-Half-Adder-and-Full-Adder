module half_adder_stb;
  reg A,B;
  wire sum,carry;
  
  Half Adder uut(
    .A(A),
    .B(B),
    .sum(sum),
    .carry(carry),
    
  );
  
  //assertion
  
  always @(*) begin
    if(sum!=(A^B))
      $display("error",$time);
    if(carry!=(A&B))
      $display("error",$time);
  end
  
  //task block
  
  
  task apply_inputs;
  input a,b;
  begin 
    A=a;
    B=b;
    #10
    endtask
    
  //waveform
    
  intial begin
    $dumpfile("Half_Adder.vcd");
    $dumpvars(0,half_adder_stb);
  end
    
  initial begin
    $monitor("A=%b B=%b C=%b D=%b",A,B,sum,carry);
     apply_inputs(0,0);
     apply_inputs(0,1);
     apply_inputs(1,0);       
     apply_inputs(1,1);
     
     $finish
     end
endmodule             
    
      
    
    
  
