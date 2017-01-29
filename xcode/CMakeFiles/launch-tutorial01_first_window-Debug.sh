#!/bin/sh
bindir=$(pwd)
cd /Users/GeorgeQuentin/Dev/OpenGL/ogl/tutorial01_first_window/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Debug/tutorial01_first_window 
	else
		"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Debug/tutorial01_first_window"  
	fi
else
	"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Debug/tutorial01_first_window"  
fi
