#!/usr/bin/env bash

clear
figlet -c first script!
echo -e "\n"

pathCheck(){
    array=($(ls -a $1))
    i=0
    echo -e "all number of file and folder in this path :" ${#array[@]} "\n"

    # echo -e "\n"
    # echo "array is :"
    # echo ${array[@]}
    # echo -e "file/s exist:"

    while [ $i -lt ${#array[@]} ]
    do
        if test -d $1${array[$i]}; then
            echo -e ${RED}$1${array[$i]} "is a directory. " ${NC}
        elif ! test -d $1${array[$i]}; then
            echo $1${array[$i]} "is a file. "
        else 
            echo "UNKOWN TYPE !!!"
        fi
        # echo -e "\t\t" `pwd`"/"${array[$i]}
        # echo ${array[$i]}
        i=`expr $i + 1`
    done
}


dir=/home/muhammad/
# echo $dir "dir1"
read -p "enter desired path(default:/home/ubuntu/):" dir
if [ $dir ]
then
    echo -e "entered path is \n"$dir
    read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 
    pathCheck "$dir"
elif [ ! $dir ]
then
    echo "input path is incorrect. "
fi
# $dir=`pwd`"/"
# echo $dir"this here !!!!!!!!!!!!!"

RED='\033[0;31m'
NC='\033[0m'

# all color 
: 'Black        0;30     Dark Gray     1;30
Red          0;31     Light Red     1;31
Green        0;32     Light Green   1;32
Brown/Orange 0;33     Yellow        1;33
Blue         0;34     Light Blue    1;34
Purple       0;35     Light Purple  1;35
Cyan         0;36     Light Cyan    1;36
Light Gray   0;37     White         1;
'

# define and call function 
# addNum(){
#     echo `expr $1 + $2`
# }

# addNum "2" "3"