data Color;
	input region eyes $ hair $ @@ ;
	label eyes = 'eye color'
		hair = 'hair color'
		region = 'geo region';
	datalines;
1 blue fair 1 blue red 1 blue medium
1 blue dark 1 green fair 1 green red
1 green medium 1 green dark 1 brown fair
1 brown red 1 brown medium 1 brown dark
1 brown black 2 blue fair 2 blue red
4 yyy zzz 4 blue fair 4 blue red

;

proc print data=color;
run;
/* */

proc freq data=Color;
	table eyes;
	title 'eye color'; 
run;
/**/

