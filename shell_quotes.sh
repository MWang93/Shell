# Single Quotes versus double quotes
## Basically, variable names are exapnded within double quotes, but not single quotes. 
## If you do not need to refer to variables, single quotes are good to use as the results are more predictable.
echo -n '$USER='
echo "$USER"
echo "\$USER=$USER"

# Using Quotes to enclose your variables
## Sometimes, it is a good idea to protect variable names in double quotes. 
## This is usually the most important if your variables value either (a) contains spaces or (b) is the empty string
X=""
if [ -n $X ]; then 	# -n tests to see if the argument is non empty
	echo "first: the variable X is not the empty string"
fi
X=""
if [ -n "$X" ]; then 	# -n tests to see if the argument is non empty
	echo "second: the variable X is not the empty string"
fi