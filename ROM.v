module ROM(
    input [3:0] A,
    output [7:0] Out
);

    reg[7:0] D;
    assign Out = D;
    
    //Nを入力とし、1+2+...+Nを計算。
    always @* begin  
        case (A)
            4'b0000: D = 8'h30;
            4'b0001: D = 8'h60;
            4'b0010: D = 8'hc0;
            4'b0011: D = 8'h5f;
            4'b0100: D = 8'hf2;
            4'b0101: D = 8'h80;
            4'b0110: D = 8'ha0;
            default: D = 8'h00;
        endcase
    end

endmodule