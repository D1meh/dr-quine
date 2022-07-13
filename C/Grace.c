#include <fcntl.h>
#include <stdio.h>
/*
	This is a comment
*/

#define FILE "Grace_kid.c"
#define CONTENT "#include <fcntl.h>%c#include <stdio.h>%c/*%c%cThis is a comment%c*/%c%c#define FILE %cGrace_kid.c%c%c#define CONTENT %c%s%c%c#define FT()int main() { dprintf(open(FILE, O_WRONLY | O_TRUNC | O_CREAT, 0644), CONTENT, 10, 10, 10, 9, 10, 10, 10, 34, 34, 10, 34, CONTENT, 34, 10, 10, 10); }%c%cFT()"
#define FT()int main() { dprintf(open(FILE, O_WRONLY | O_TRUNC | O_CREAT, 0644), CONTENT, 10, 10, 10, 9, 10, 10, 10, 34, 34, 10, 34, CONTENT, 34, 10, 10, 10); }

FT()