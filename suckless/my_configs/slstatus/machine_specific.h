Re-symlink machine_specific.h (this file) to machine_specific_<your_computer>.h.
machine_specific.h is not included in the Makefile. So try deleting slstatus.o in case the changes are not seen in the program.
