
data two;
	year=2011;
	amount=5000;
	do i=1 to 5;
		year=year+1;
		do qtr=1 to 4;
			amount=amount*1.1;
		end;
	end;
run;

proc print data=two;
run;
