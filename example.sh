#!/bin/bash
INPUT=stock.txt
PRICE=0
DRINKS=0
SNACKS=0
FRUITS=0
old_IFS=$IFS      # save the field separator   
IFS=";"     # new field separator, the end of line   
while read name cate price
do
    if [ $cate = "drinks" ]; then   
        let DRINKS=DRINKS+$price
fi

if [ $cate = "snacks" ]; then
        let SNACKS=SNACKS+$price
fi

if [ $cate = "fruits" ]; then
        let FRUITS=FRUITS+$price
fi

# Total
let PRICE=PRICE+$price
done < $INPUT

echo -e "Drinks: " $DRINKS
echo -e "Snacks: " $SNACKS
echo -e "Fruits: " $FRUITS
echo -e "Price " $PRICE 
IFS=$old_IFS


# declare -A category                  # associative array
# IFS=';'
# while read name cate price ; do
#   ((category[$cate]+=price))
# done < stock.txt

# sum=0
# for cate in ${category[@]}; do       # loop over the indices
#   printf "Total amount of %s: %d\n" $cate ${category[$cate]}
#   ((sum+=${category[$cate]}))
# done

# printf "Total amount of everything: %d\n" $sum