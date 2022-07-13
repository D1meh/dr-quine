#include <stdio.h>

void function(void) {
	int i;
	i = 5;
}

int main(void) {
	/*
		10 = newline, 9 = tab, 34 = quote
	*/
	char*s = "#include <stdio.h>%c%cvoid function(void) {%c%cint i;%c%ci = 5;%c}%c%cint main(void) {%c%c/*%c%c%c10 = newline, 9 = tab, 34 = quote%c%c*/%c%cchar*s = %c%s%c;%c%cprintf(s, 10, 10, 10, 9, 10, 9, 10, 10, 10, 10, 9, 10, 9, 9, 10, 9, 10, 9, 34, s, 34, 10, 9, 10, 9, 10, 9, 10, 10, 10, 10, 9, 10);%c%cfunction();%c%creturn 0;%c}%c%c/*%c%cThis is a comment outside the program%c*/";
	printf(s, 10, 10, 10, 9, 10, 9, 10, 10, 10, 10, 9, 10, 9, 9, 10, 9, 10, 9, 34, s, 34, 10, 9, 10, 9, 10, 9, 10, 10, 10, 10, 9, 10);
	function();
	return 0;
}

/*
	This is a comment outside the program
*/