#!/bin/bash
 
# THIS TOOL CREATE TUNNEL USING SSH AND SERVEO
# BY PARCODER - parcoder83@gmail.com

R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
C='\033[1;36m'

function banner {

printf "$C"	
echo "
  ____	           _____          _
 |  __ \          / ____|        | |          
 | |__) |_ _ _ __| |     ___   __| | ___ _ __ 
 |  ___/ _  | -__| |    / _ \ / _  |/ _ \ -__|
 | |  | (_| | |  | |___| (_) | (_| |  __/ |   
 |_|   \__,_|_|   \_____\___/ \__,_|\___|_|   
"
printf "$Y" 
echo "
                EASY SSH TOOL
" 

}

function start {
	clear
	banner
	printf "$R"
	printf "[Set]Serveo Port>> "
	read sport

	clear
	banner	
	printf "$R"
       	printf "[Set]Local Host>> "
	read lhost

	clear
	banner
	printf "$R"
	printf "[Set]Port>> "
	read lport

	clear
	banner
	printf "$G"
	echo "TUNNEL IS BEING CREATED..."
	ssh -R $sport:$lhost:$lport serveo.net
}

start
