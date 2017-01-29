#!/bin/sh
bindir=$(pwd)
cd /Users/GeorgeQuentin/Dev/OpenGL/ogl/misc05_picking/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/MinSizeRel/misc05_picking_slow_easy 
	else
		"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/MinSizeRel/misc05_picking_slow_easy"  
	fi
else
	"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/MinSizeRel/misc05_picking_slow_easy"  
fi
