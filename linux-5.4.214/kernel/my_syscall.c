#include <linux/syscalls.h>

SYSCALL_DEFINE0(mycall)
{
	printk("This is the system call Example of Ambroise JACQUEMET 50251537");
	return 0;
}
