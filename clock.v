module Clock(
    inclk,outclk
);
    input inclk;
    output outclk;
    reg [3:0] count = 4'b0000;

    always @(posedge inclk) begin
        if(count == 4'b1111) begin
            count <= 4'b0000;
        end else begin
            count <= count + 4'b0001;
        end
    end

    assign outclk = count[3];
endmodule