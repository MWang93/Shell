# Create a Simple welcome
greeting="Welcome"
user=$(whoami)
day=$(date +%A)

echo "$greeting back $user! Today is $day, which is the best day of the entire week!"
echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"

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

# Using Braces to Protect Your Variables
X=ABC
echo "${X}abc"

# Special Variable https://www.tutorialspoint.com/unix/unix-special-variables.htm
echo "Write the PID of the current shell: $$"
echo "Write the filename of the current script: $0"
echo "Write the number of arguments supplied to a script: $#"
echo "The exit status of the las command executed: $?"

# try this in command: ./test.sh Zara Ali
echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"