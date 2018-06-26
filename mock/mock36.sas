libname user "\\Mac\Home\Documents\test36";

data user.employee;
	infile datalines;
	input name $ dept $ age;
datalines;
tom engg 35
tom engg 35
;
run;

data user.newbies;
	infile datalines;
	input name $ age;
datalines;
mary 37
;
run;

proc datasets library=user nolist;
	append base=employee data=newbies;
run;
quit;

proc datasets library=user nolist;
	delete newbies;
run;
quit;

proc print data=user.employee noobs;
title 'the result data set';
run;
