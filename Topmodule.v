module Topmodule(
    //////////// CLOCK //////////
	input 		          		CLK1,
	input 		          		CLK2,
	//////////// SEG7 //////////
	output		     [7:0]		HEX0,
	output		     [7:0]		HEX1,
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,
	//////////// Push Button //////////
	input 		     [1:0]		BTN,
	//////////// LED //////////
	output		     [9:0]		LED,
	//////////// SW //////////
	input 		     [9:0]		SW
);

    //wire button;    //チャタリング除去後のボタン
	wire [7:0] disp;	//HEX0表示用
	wire [4:0] result;	//CPUからの結果

	//wire clk;
	//assign clk=~button;		//押されたとき0なので反転しておく

	//m_chattering c1(CLK1,BTN[0],button);

	CPU cpu1(CLK1,SW[3:0],result);

	m_seven_segment seg1(result,disp);

    assign LED=SW;
	assign HEX0=disp;
	assign HEX1=8'hff;
	assign HEX2=8'hff;
	assign HEX3=8'hff;
	assign HEX4=8'hff;
	assign HEX5=8'hff;

endmodule