#!/bin/sh
bindir=$(pwd)
cd /Users/GeorgeQuentin/Dev/OpenGL/ogl/tutorial16_shadowmaps/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Release/tutorial16_shadowmaps_simple 
	else
		"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Release/tutorial16_shadowmaps_simple"  
	fi
else
	"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Release/tutorial16_shadowmaps_simple"  
fi
