#!/bin/sh
bindir=$(pwd)
cd /Users/GeorgeQuentin/Dev/OpenGL/ogl/tutorial10_transparency/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/MinSizeRel/tutorial10_transparency 
	else
		"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/MinSizeRel/tutorial10_transparency"  
	fi
else
	"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/MinSizeRel/tutorial10_transparency"  
fi
