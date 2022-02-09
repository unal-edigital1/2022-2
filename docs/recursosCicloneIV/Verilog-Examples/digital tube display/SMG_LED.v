
module SMG_LED (clk_50M,led_bit,dataout);

input clk_50M;      //????50M?? ?17????
output [7:0] dataout;   //??????7?????
output led_bit;         //??????????????

reg [7:0] dataout;
reg       led_bit;  
reg [27:0] count; //?????

 always led_bit <= 'b0; //??????????????
//?????
always @ ( posedge clk_50M )
 begin
  count<=count+1;  //?????
 end

always @ ( posedge clk_50M )
 begin
  case ( count[27:24] )
  //  case ( count[27:24] )???????????,
  //  ?? count[27:24] ???????????????????
  //  ???????
  //  ????????0?F
  0: dataout<=8'b11000000;  //???????0???
  1: dataout<=8'b11111001;
  2: dataout<=8'b10100100;  //???????2???
  3: dataout<=8'b10110000;
  4: dataout<=8'b10011001;
  5: dataout<=8'b10010010;  
  6: dataout<=8'b10000010; 
  7: dataout<=8'b11111000;
  8: dataout<=8'b10000000;
  9: dataout<=8'b10010000;
  10:dataout<=8'b10001000;
  11:dataout<=8'b10000011;
  12:dataout<=8'b11000110;
  13:dataout<=8'b10100001;
  14:dataout<=8'b10000110;
  15:dataout<=8'b10001110;  //???????F???
  endcase
 end
endmodule
