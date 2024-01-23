#!/usr/bin/env bash
input=$1
case $input in 
    linux)
        echo "Linux Typed"
        echo "Finished..."
        mkdir /home/faradars/Documents/linux
        ;;
    gnu)
        echo "Gnu Typed"
        ;;
    gnu/linux)
        echo "Gnu/Linux Typed"
        ;;
    opensource)
        echo "OpenSource Typed"
        ;;
    [0-9][0-9] )
        echo "You Enter DIGIT"
        ;;
    # [a-z] | [a-z] )
    #     echo "You Enter CHAR"
    #     ;;
    [a-z])
        echo "You Enter CHAR"
        ;;
    *)
        echo "UNDEFINED INPUT"
        exit
        ;;
esac