#!/bin/bash

add() {
	local a=$1
	echo $(expr 1 + $a)
}
echo $(add 'a')