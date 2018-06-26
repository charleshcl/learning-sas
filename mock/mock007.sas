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
	input x y $ z1;
	datalines;
1 a 27
1 a 33
2 a 45
2 a 52
2 b 69
3 b 70
. c 82
4 c 91
;

proc sort data=one;
	by x;
run;

proc sort data=two;
	by x;
run;

data three;
	set one two;
	by x;
run;

proc print data=three;
run;
