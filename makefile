# define some Makefile variables for the compiler and compiler flags
# to use Makefile variables later in the Makefile: $()
#
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
#  -pg   adds profiling information to the executable file
#
# for C++ define  CC = g++
CC = g++
CFLAGS = -g -Wall -pg

# define any libraries to link into executable:
#   if I want to link in libraries (libx.so or libx.a) I use the -llibname 
#   option, something like (this will link in libmylib.so and libm.so:
LIBS = -lmylib -lm

# text editor
TEXT_EDITOR = C:\Program Files\Sublime Text 2\sublime_text.exe

all: func1.h func2.h main.c
	$(CC) $(CFLAGS) head.h main.c -o executable.exe

prof: 
	executable.exe  file1.c  file2.c
	gprof executable.exe gmon.out > analysis.txt
	$(TEXT_EDITOR) analysis.txt

clean: 
	rm *.o *.exe

run:
	hello.exe