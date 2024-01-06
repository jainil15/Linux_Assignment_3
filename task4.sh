#!/bin/bash  
  
createDirs() {  
	for i in "$@"  
	do  
		mkdir -p "$i"  
		echo "directory $i created"  
	done  
}  
createFiles() {  
	for i in "$@"  
	do  
		touch "$i"  
		echo "file $i created"  
	done  
}  
removeDirs() {  
	for i in "$@"  
	do  
		rm -r "$i"  
		echo "$i removed"  
	done  
}  
readFile() {  
	cat $1  
}  
  
while true  
do  
	echo "Select one of the following:"  
	echo "1. Create files"  
	echo "2. Create Dirs"  
	echo "3. Read file"  
	echo "4. Remove files/dirs"  
	echo "5. Quit"  
	  
	read -p "Enter your choice: " choice  
	case $choice in  
	1)  
		read -p "Enter file names to create: " fileNames  
		createFiles $fileNames  
		;;  
	2)  
		read -p "Enter dir names to create: " dirNames  
		createDirs $dirNames  
		;;  
	3)  
		read -p "Enter a file name to read: " fileNameToRead  
		readFile $fileNameToRead  
		;;  
	4)  
		read -p "Enter a files/dirs to remove: " fileDirNames  
		removeFiles fileDirNames  
		;;  
	5)  
		echo "Quitting..."  
		break  
		;;  
	*)  
		echo "Invalid choice"  
		;;  
	esac  
done

