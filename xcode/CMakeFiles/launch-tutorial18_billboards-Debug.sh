#!/bin/sh
bindir=$(pwd)
cd /Users/GeorgeQuentin/Dev/OpenGL/ogl/tutorial18_billboards_and_particles/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Debug/tutorial18_billboards 
	else
		"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Debug/tutorial18_billboards"  
	fi
else
	"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Debug/tutorial18_billboards"  
fi