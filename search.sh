list=$(cat $1| tr "\n" " ")
#list=$(cat test.txt)
echo $list

for i in $list
#for i in "${list[@]}"
do
  :
  List=$(box users search $i | grep \"id\" | awk -F '"' '{print $4}')
  idList+=( $List )
done

echo "This is the list" ${idList[*]}

for j in ${idList[@]}
do
  :
  echo "I am deleting this user id" $j
  box users delete -f -y $j
done
