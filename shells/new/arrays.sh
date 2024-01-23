names=[reza,ali,hamid,mahdi]
numbers=([0]=00 [1]=10 [2]=20 [3]=30 [4]=40 [5]=50 [6]=60)
pTypes[1]="arm"
pTypes[2]="coreI"
pTypes[3]="ryzen"
pTypes[4]="core2"

echo "names Fields :" ${names[*]}
echo "numbers Fields :" ${numbers[@]}
echo "pTypes Fields :" ${pTypes[*]}

echo "\n"

echo "numbers Selected Fields :"

echo ${numbers[@]:1}
echo ${numbers[@]:2}
echo ${numbers[@]:1:4}
echo ${numbers[@]:2:3}
echo ${numbers[5]}


echo -e "Length of pTypes :" ${#numbers[*]}

echo -e "Show Numbers Field With Loop : \n "

index=0
 
while [ $index -le ${#numbers[@]} ]
do 
    echo -e ${numbers[$index]}
    index=`expr $index + 1`
done

echo -e "\nFill Up Array & Show Fields: "
 
for ((c=6; c>=0; c--))
do 
    numbers[$c]=$c
    echo "index $c of numbers array is :" 
    echo -e "\t\t\t\t ${numbers[$c]} "
done

echo ${numb[@]}
echo ${#numb[@]}