#!/bin/bash
echo "Savinkin Vladimir, working with files: make, delete, move. "
while :
do
echo "Choose operation:
1)make file
2)delete file
3)move file"
read operation
        if [ "$operation" -eq "1" ]
				then
				echo "File name:"
				read name
					if [ -e $name ] 
						then
						echo "Error: File already exists"
					else
						command="touch ${name}"
						eval $command
						echo "File $name created"
					fi

        elif [ "$operation" -eq "2" ]
                then
                echo "File name:"
                read name
					if [ -e $name ] 
						then
						command="rm ${name}"
						eval $command
						echo "File $name deleted"
					else
						echo "Error: File not found"
					fi
					
		elif [ "$operation" -eq "3" ]
                then
                echo "File name:"
                read name
					if [ -e $name ]
						then
						echo "Destination folder:"
						read directory
							if [ -d $directory ]
								then
								command="mv ${name} ${directory}"
								eval $command
								echo "File $name moved to $directory"
							else
								echo "Error: Directory not found"
							fi
					else
						echo "Error: File not found"
					fi
					
        else
			echo "Input Error"
		fi
while :
        do
        echo "Continue?(y/n):"
        read cont
        if test $cont = "y"; then
                echo
                break
        elif test $cont = "n"; then
                echo "closed"
                exit
        else
                echo "Input Error"
        fi
done
done
~      