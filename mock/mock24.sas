data test;
	x=5;
	do until (x ge 5);
		x+1;
	end;
run;

proc print data=test;
run;
