data work.words;
	word1='Is';
	word2='It';
	all=catx(' ', word1, word2);
run;

proc contents data=words;
run;
