obj-m += mtty.o 
obj-m += mdpy.o 
obj-m += mdpy-fb.o 
obj-m += mbochs.o 
 
PWD := $(CURDIR) 
 
all: 
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules 
 
clean: 
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
