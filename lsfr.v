//random 0 to 7 generator 
module lsfr(randin, clk, rst, out);
    input [0:2] randin;
    input clk, rst;
    output out;

    always @(posedge clk) begin
        if(rst) 
            out <= randin;
        else 
            out <= {out[2], out[0] ^ out[2], out[1]};
    end
endmodule

