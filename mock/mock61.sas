data one;
	x=2;
	if x=1 then y=100;
	if x=2 then y=200;
/*	if x=3 then y=300;
*/
	else y=27;

run;

proc print data=one;
run;
