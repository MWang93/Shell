#!/usr/local/bin/bash
echo $BASH_VERSION

#basics
echo "1. basic"
declare -A MYMAP
MYMAP[foo]=bar
echo ${MYMAP[foo]}

#creating
echo "2. creating"
declare -A MYMAP
MYMAP[foo]=bar
MYMAP[baz]=quux
MYMAP[corge]=grault

declare -A MYMAP=([foo]=bar [baz]=quux [corge]=grault) # or seperate two steps
echo ${MYMAP[foo]}
echo ${MYMAP[baz]}

#variables as keys
echo "3. variables as keys"
K=baz
MYMAP[$K]=quux
echo ${MYMAP[baz]} 

# declare -A MYMAP      
# MYMAP["corge X"]="grault Y"  # Quoting keys makes no difference
# MYMAP['waldo 1']="fred 2"	# Single quotes also make no difference
# echo ${MYMAP["corge X"]}  
# echo ${MYMAP['waldo 1']}

declare -A names

names=(
    [John]=Doe
    [Jane]=Doe
    [Jim]=Smith
    [Angela]=Merkel
)

for i in "${!names[@]}"
do
  echo "key: $i, value: ${names[$i]}"
done

