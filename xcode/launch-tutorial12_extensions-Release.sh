#!/bin/sh
bindir=$(pwd)
cd /Users/GeorgeQuentin/Dev/OpenGL/ogl/tutorial12_extensions/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Release/tutorial12_extensions 
	else
		"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Release/tutorial12_extensions"  
	fi
else
	"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Release/tutorial12_extensions"  
fi
