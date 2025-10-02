#define _GNU_SOURCE
#include <unistd.h>
#include <stdio.h>
#include <sys/syscall.h>

int main(void)
{
	long ret = syscall(436);

	printf("System return value : %ld\n", ret);
	return 0;
}
