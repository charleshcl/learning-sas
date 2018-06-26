data one;
	input x y $ z;
	datalines;
1 a 27
1 a 33
1 b 45
2 a 52
2 b 69
3 b 70
4 a 82
4 c 91
;

data two;
	set one;
	by x y;
	if first.y=1;
run;

proc print data=two;
run;
