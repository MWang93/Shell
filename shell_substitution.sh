#!/bin/bash
a = 10
echo -e "Value of a is $a \n"
echo "Value of a is $a \n" 
# \\ backslash, \a alert (BEL), \b backspace, \c suppress trailing newline
# \f form feed, \n new line, \r carriage return, \t horizontal tab, \v vertical tab

#!/bin/sh
# command substitution: command substitution is the mechanism 
# by which the shell performs a given set of commands and 
# then substitutes their output in the place of the commands.
DATE=`date`
echo "Date is $DATE"

USERS=`who | wc -l`
echo "Logged in user are $USERS"

UP=`date ; uptime`
echo "Uptime is $UP"