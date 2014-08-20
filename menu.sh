#!/bin/bash
function insertdata
{
	echo "please input data"
	read data
	echo "input data is:$data"
	
	
}
function listdata
{
	for i in $1
	do
	 	echo $i
	done
}
loginStatus=0
declare -a aa;
while (true)
do
	echo "operation intro"
	echo "1 login"
	echo "2 insertdata data"
	echo "3 list data"
	echo "q is quit"
	if [ $loginStatus -eq 1 ]
	then
		echo "enter you selection"
		read select
		case $select in
		"2")
			echo "please input data"
			read data
			length=${#aa[@]}
			aa[$length]=$data
			;;
		"3")
			echo "now the data is:"
			listdata ${aa[@]}
			;;
		"q")
			break;
			;;
		*)
			echo "please select"
		esac

	
	elif [ $loginStatus -eq 0 ]
	then
		echo "  please input name and password:"
		read name
		echo "name is:$name"
		read password
		echo "password is :$password"
		if [ $name -eq "w" ] && [ $password = "ww" ]
		then
			echo "login fail"
		else
			echo "login success"
			let loginStatus=1
		fi
	fi
done
function vv
{

	if [ $# -ne 2 ] 
	then
		echo "wrong argu"
	fi

	echo $*

}
vv $1 $2
