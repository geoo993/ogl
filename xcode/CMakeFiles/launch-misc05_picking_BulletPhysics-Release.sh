#!/bin/sh
bindir=$(pwd)
cd /Users/GeorgeQuentin/Dev/OpenGL/ogl/misc05_picking/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Release/misc05_picking_BulletPhysics 
	else
		"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Release/misc05_picking_BulletPhysics"  
	fi
else
	"/Users/GeorgeQuentin/Dev/OpenGL/ogl/xcode/Release/misc05_picking_BulletPhysics"  
fi
