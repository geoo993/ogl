#!/bin/sh
bindir=$(pwd)
cd /Users/GeorgeQuentin/Dev/OpenGL/ogl/tutorial06_keyboard_and_mouse/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Debug/tutorial06_keyboard_and_mouse 
	else
		"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Debug/tutorial06_keyboard_and_mouse"  
	fi
else
	"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Debug/tutorial06_keyboard_and_mouse"  
fi