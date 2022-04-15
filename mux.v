module mux(y,s,I);
output y;
input [2:0] s;
input [7:0] I;

wire [7:0]w,p;
decoder d(s,w);
assign p[0]=(w[0]==1'b1)?I[0]:1'bz;
assign p[1]=(w[1]==1'b1)?I[1]:1'bz;
assign p[2]=(w[2]==1'b1)?I[2]:1'bz;
assign p[3]=(w[3]==1'b1)?I[3]:1'bz;
assign p[4]=(w[4]==1'b1)?I[4]:1'bz;
assign p[5]=(w[5]==1'b1)?I[5]:1'bz;
assign p[6]=(w[6]==1'b1)?I[6]:1'bz;
assign p[7]=(w[7]==1'b1)?I[7]:1'bz;
assign y=(p[0]|p[1]|p[2]|p[3]|p[4]|p[5]|p[6]|p[7]);
endmodule

