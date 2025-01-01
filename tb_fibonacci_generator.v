module tb_fibonacci_generator;

    reg clk;              
    reg rst;                   
    wire [31:0] fib;        

    fibonacci_generator uut (
        .clk(clk),
        .rst(rst),
        .fib(fib)
   );
    always begin
        #5 clk = ~clk; 
    end

   
    initial begin
    
        clk = 0;
        rst = 0;

      
        $display("Applying Reset...");
        rst = 1;
        #10 rst = 0; 
        

        $display("Time\tFib Number");
        $monitor("%0t\t%0d", $time, fib);
        
       
        #100;
        
       
        $finish;
    end

endmodule
