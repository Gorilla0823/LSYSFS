COMPILER = gcc
FILESYSTEM_FILES = lsysfs.c
MOUNT_POINT = tmp

build: $(FILESYSTEM_FILES)
	$(COMPILER) $(FILESYSTEM_FILES) -o lsysfs `pkg-config fuse --cflags --libs`
	echo 'To Mount: ./lsysfs -f [mount point]'
	./lsysfs -f $(MOUNT_POINT)

clean:
	rm ssfs
