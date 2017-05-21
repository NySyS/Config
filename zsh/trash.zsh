trash()
{
    ans="Y"
    OPTIND=1
    while getopts ":E" opt
    do
        case $opt in
            E)
                read "ans?Empty trash ? (Y/n)"
                ans=${ans:-Y}
                if [ "$ans" = Y ]; then
                    echo "Cleaning trash ..."
                    /usr/bin/rm -frv ~/.trash
                fi
                return 0
                ;;
            \?)
                echo "Invalid option: -$OPTARGS"
                return 1
                ;;
        esac
    done
    for j in $(seq $OPTIND $#)
    do
#        echo "##${@:$j:1}##" #${!j@}
        suffix=''
        if [ -d ~/.trash ] 
        then
            i=0
            while [ -e ~/.trash/${@:$j:1}$suffix ]
            do
                suffix="_$i"
                ((++i))
            done
        else
            mkdir ~/.trash
        fi
#        echo "@"${@##*/}
        if [ -e ./${@:$j:1} ]; then
            mv ${@:$j:1} ~/.trash/${@:$j:1}$suffix
        else
            echo "${@:$j:1} not found!"
        fi
    done
}

