#!/bin/sh
bindir=$(pwd)
cd /Users/GeorgeQuentin/Dev/OpenGL/ogl/tutorial04_colored_cube/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/MinSizeRel/tutorial04_colored_cube 
	else
		"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/MinSizeRel/tutorial04_colored_cube"  
	fi
else
	"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/MinSizeRel/tutorial04_colored_cube"  
fi
