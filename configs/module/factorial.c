#include <linux/module.h>
#include <linux/kernel.h>

int factorial(int num) 
{
	if (num == 1 || num == 0)
		return 1;
	else
		return num * factorial(num - 1);
}

int init_module(void)
{
	printk(KERN_INFO "5! = %d\n", factorial(1));
	return 0;
}

void cleanup_module(void)
{
	printk(KERN_INFO "Goodbye!\n");
}
