module muxdec_tb();
	reg [2:0]s;
	reg [7:0]I;
	wire y;
	integer x;
	mux d(y,s,I);
	
	task intialize();
		begin
		s=0;
		I=0;
		#100;
		end
	endtask
	
	task selectlines(input [2:0] i);
		begin
			s=i;
			#500;
		end
	endtask
	
	task inputlines(input [7:0] j);
		begin
			I=j;
			#250;
		end
	endtask
	
	initial begin
			intialize();
			for(x=0;x<8;x=x+1)
				begin	
					selectlines(x);
					inputlines(8'b00000000);
					inputlines(8'b11111111);
				end
		
	end		
endmodule
	