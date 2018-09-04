#!/bin/bash
for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done

#!/bin/bash
c=1
while [ $c -le 5 ]
do 
	echo "Welcome $c times"
	((c++)) #c=$(( c+1 ))
done

#!/bin/bash
file=/Users/mwang/documents/shell/resolv.txt
while IFS= read -r line
do
	printf '%s\n' "$line" #echo "$line"
done < "$file"

#!/bin/bash
filee=/Users/mwang/documents/shell/foo.txt
regex=".* bird .*"
while IFS= read -r line
do 
	if [[ $line =~ $regex ]]
	then 
		echo $line 
	fi
done < "$filee"