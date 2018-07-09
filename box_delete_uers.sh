#!/bin/bash

#LIST=`for i in $(cat test.txt ) ; do box users search $i | grep \"id\" | awk -F '"' '{print $4}'; done`


#for i in $(cat $LIST) ; do box users delete -f -y $i ; done

#Create list of user accounts from text file
declare -a userList=`cat test.txt`

declare -a idList=()

for i in ${userList[@]}; do
	idSearch=$(do box users search $i | grep \"id\" | awk -F '"' '{print $4}')
	idList+=( $idSearch )
done

for i in ${idList[@]}; do
  blah
done
