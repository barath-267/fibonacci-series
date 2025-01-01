module fibonacci_generator(
    input clk,              
    input rst,             
    output reg [31:0] fib   
);

    reg [31:0] a, b;       

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            a <= 0;        
            b <= 1;        
            fib <= 0;      
        end else begin
            fib <= a;     
            a <= b;      
            b <= a + b;   
        end
    end

endmodule
