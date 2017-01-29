#!/bin/sh
bindir=$(pwd)
cd /Users/GeorgeQuentin/Dev/OpenGL/ogl/tutorial05_textured_cube/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Release/tutorial05_textured_cube 
	else
		"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Release/tutorial05_textured_cube"  
	fi
else
	"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Release/tutorial05_textured_cube"  
fi
