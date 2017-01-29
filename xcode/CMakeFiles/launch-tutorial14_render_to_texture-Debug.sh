#!/bin/sh
bindir=$(pwd)
cd /Users/GeorgeQuentin/Dev/OpenGL/ogl/tutorial14_render_to_texture/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Debug/tutorial14_render_to_texture 
	else
		"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Debug/tutorial14_render_to_texture"  
	fi
else
	"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Debug/tutorial14_render_to_texture"  
fi
