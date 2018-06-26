ods pdf file='/folders/myfolders/mock001.pdf';

data work.ds1;
	x=5;
	do until (x ge 5);
		x+1;
	end;
run;
proc print data=work.ds1;
run;

ods pdf close;