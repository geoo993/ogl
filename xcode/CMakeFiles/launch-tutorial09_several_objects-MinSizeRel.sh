#!/bin/sh
bindir=$(pwd)
cd /Users/GeorgeQuentin/Dev/OpenGL/ogl/tutorial09_vbo_indexing/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/MinSizeRel/tutorial09_several_objects 
	else
		"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/MinSizeRel/tutorial09_several_objects"  
	fi
else
	"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/MinSizeRel/tutorial09_several_objects"  
fi
