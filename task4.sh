#!/bin/bash  
  
createDirs() {  
	for i in "$@"  
	do  
		if [ ! -d "$i"]
		then
			mkdir -p "$i"  
			echo "directory $i created"  
		else
			echo "Directory $i already exists"
		fi
	done  
}
createFiles() {
    for i in "$@"; do
        if [ ! -e "$i" ]; then
            touch "$i"
            echo "file $i created"
        else
            echo "file $i already exists"
        fi
    done
}
removeDirs() {
    for i in "$@"; do
        if [ -d "$i" ]; then
            rm -r "$i"
            echo "$i removed"
        else
            echo "$i not found"
        fi
    done
} 
readFile() {
    if [ -e "$1" ]; then
        cat "$1"
    else
        echo "File $1 not found"
    fi
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
