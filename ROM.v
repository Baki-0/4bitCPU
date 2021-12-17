module ROM(
    input [3:0] A,
    output [7:0] Out
);

    reg[7:0] D = 0;
    assign Out = D;
    
    //Nを入力とし、1+2+...+Nを計算。
    always @* begin  
        case (A)
            4'b0000: D = 8'h30; //0番地はなんか動かんかった
            4'b0001: D = 8'h30; //Aレジスタを0で初期化
            4'b0010: D = 8'h60; //InputをBレジスタへ代入
            4'b0011: D = 8'hc0; //A+Bの結果をAレジスタへ
            4'b0100: D = 8'h5f; //B-1の結果をBレジスタへ
            4'b0101: D = 8'hf3; //B-1が0じゃないなら3番地へ戻る
            4'b0110: D = 8'h80; //0ならAレジスタを出力
            4'b0111: D = 8'ha0; //プログラム終了
            default: D = 8'h00;
        endcase
    end

endmodule