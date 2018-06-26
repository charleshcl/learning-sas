data work.ds2;	
	infile '\\Mac\Home\Desktop\typecolor.txt' truncover;
	length type $ 5 color $ 11;
	input type $ color $;
run;
proc print data=work.ds2;
run;
