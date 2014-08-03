#changes ls listing to alphabetical left align single column
alias ls='ls -la --color=auto'
#helpful methods:
#move up one directory
alias up="cd ../"
#search
alias searchfor="apt-cache search"
#clear the screen quickly
alias cl="clear"
#show size of disc in MB/GB vs. "blocks"
alias hdd="df -h"

#----------------------------------------------------------------
#set default compiler to clang
export CC=clang
#----------------------------------------------------------------
#have make use all the cores possible
alias make='make -j 8'
#----------------------------------------------------------------
#easy navigation to project1 file
alias P1="cd /home/khimes/work/project1"
#easy navigation to wolfssl-examples
alias wolf="cd /home/khimes/work/wolfssl-examples"
#easy navigation to work directory from anywhere
alias work="cd /home/khimes/work/"
#easy navigation to test server and client from anywhere
alias testF="cd /home/khimes/work/ssl-tutorial-2.1"
#easy navigation to cyassl-3.0.0 from anywhere
alias cyassl="cd /home/khimes/work/cyassl"
#easy navigation to ToddAssignments
alias Todd="cd /home/khimes/work/ToddAssignments"
#reset terminal as if just starting up
alias reset="source .bashrc"

#set color coding by program type / directory etc.
#----------------------------------------------------------------
export CLICOLOR=1
export  LSCOLORS=gxFxCxDxBxegedadagacad
export JUNIT_HOME=/usr/share/java
export CLASSPATH=$CLASSPATH:/usr/shared/java/hamcrest-core-1.3
export CLASSPATH=$CLASSPATH:/usr/shared/java/junit-4.11
#----------------------------------------------------------------
#welcome Message:

ore="\033[31m"
obe="\033[1;34m"
oge="\033[32m"
ce="\033[0m"

rm .bash_history
clear
echo -e "           Kaleb's Ubuntu Terminal"
echo -e "${obe}__      __      _      ____  ___   ___   _${ce}"     
echo -e "${obe}\ \    / /___  | |    / ___|/ __| / __| | |${ce}"    
echo -e "${obe} \ \/\/ // _ \ | |__  |  _| \__ \ \__ \ | |__${ce}"  
echo -e "${obe}  \_/\_/ \___/ |____| |_|   |___/ |___/ |____|${ce}"
echo""
echo -ne "   Today is : "; date
echo -e ""
disk_available=$(df -h --block-size=1024 | awk '{sum += $4;} END {print sum;}');
disk_used=$(df -h --block-size=1024 | awk '{sum += $3;} END {print sum;}');
disk_size=$(df -h --block-size=1024 | awk '{sum += $2;} END {print sum;}');
disk_available_mb=$(echo "scale=2; (($disk_available/(1024^2))/1.873)" | bc)
disk_used_mb=$(echo "scale=2;(($disk_used/(1024^2))/1.873)" | bc)
disk_size_mb=$(echo "scale=2; (($disk_size/(1024^2))/1.873)" | bc)


echo -e "${obe}       +-----------------------------+"
echo -e "       |${ce} ${oge}Total Disk Space:${ce} ${ore}${disk_size_mb} GB${ce}${obe} |"${ce}
echo -e "${obe}       |${ce} ${oge}Total Free Space:${ce} ${ore}${disk_available_mb} GB ${ce}${obe}|"${ce}
echo -e "${obe}       |${ce} ${oge}Total Used Space:${ce}  ${ore}${disk_used_mb} GB ${ce}${obe}|"${ce}
echo -e "${obe}       +-----------------------------+"${ce}
echo -e "";
