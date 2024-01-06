#!/bin/bash

createDir() {
	for i in "$@"
	do
		mkdir -p "$i"
		echo "directory $i created"	
	done
}
read dirs
createDir $dirs 