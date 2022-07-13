#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>

int main(void) {
	int i = 5;
	if (i <= 0)
		return 0;
	char file[50], exec[50], cmd[100];
	char*s = "#include <stdio.h>%c#include <fcntl.h>%c#include <stdlib.h>%c#include <unistd.h>%c%cint main(void) {%c%cint i = %d;%c%cif (i <= 0)%c%c%creturn 0;%c%cchar file[50], exec[50], cmd[100];%c%cchar*s = %c%s%c;%c%c%csprintf(file, %cSully_%c%c.c%c, i);%c%cif (access(file, F_OK) == 0) {%c%c%ci--;%c%c%csprintf(file, %cSully_%c%c.c%c, i);%c%c}%c%csprintf(exec, %cSully_%c%c%c, i);%c%csprintf(cmd, %cgcc -Wall -Werror -Wextra %c%c -o %c%c%c, file, exec);%c%cdprintf(open(file, O_WRONLY | O_TRUNC | O_CREAT, 0644), s,10,10,10,10,10,10,9,i,10,9,10,9,9,10,9,10,9,34,s,34,10,10,9,34,37,100,34,10,9,10,9,9,10,9,9,34,37,100,34,10,9,10,9,34,37,100,34,10,9,34,37,115,37,115,34,10,9,10,9,10,10,9,10,9,9,10,9,9,34,37,115,34,10,9,9,10,9,10);%c%csystem(cmd);%c%c%cif (i > 0) {%c%c%cchar tmpCmd[20];%c%c%csprintf(tmpCmd, %c./%c%c%c, exec);%c%c%csystem(tmpCmd);%c%c}%c}";

	sprintf(file, "Sully_%d.c", i);
	if (access(file, F_OK) == 0) {
		i--;
		sprintf(file, "Sully_%d.c", i);
	}
	sprintf(exec, "Sully_%d", i);
	sprintf(cmd, "gcc -Wall -Werror -Wextra %s -o %s", file, exec);
	dprintf(open(file, O_WRONLY | O_TRUNC | O_CREAT, 0644), s,10,10,10,10,10,10,9,i,10,9,10,9,9,10,9,10,9,34,s,34,10,10,9,34,37,100,34,10,9,10,9,9,10,9,9,34,37,100,34,10,9,10,9,34,37,100,34,10,9,34,37,115,37,115,34,10,9,10,9,10,10,9,10,9,9,10,9,9,34,37,115,34,10,9,9,10,9,10);
	system(cmd);

	if (i > 0) {
		char tmpCmd[20];
		sprintf(tmpCmd, "./%s", exec);
		system(tmpCmd);
	}
}