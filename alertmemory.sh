#!/bin/bash 
#######################################################################################
#Script Name    :alertmemory.sh
#Description    :send alert mail when server memory is running low
#Args           :       
#Author         :Aaron Kili Kisinga
#Email          :aaronkilik@gmail.com
#License       : GNU GPL-3	
#######################################################################################
## declare mail variables
##email subject 
subject="Server Memory Status Alert"

## get total free memory size in megabytes(MB) 
free=$(free -mt | grep Total | awk '{print $4}')

## check if free memory is less or equals to  100MB
if [[ "$free" -le 400  ]]; then
        ## get top processes consuming system memory and save to temporary file 
        # ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head >/tmp/top_proccesses_consuming_memory.txt

        # file=/tmp/top_proccesses_consuming_memory.txt
        ## Make sound in computer
        speaker-test -t sine -f 1000 -l 1
        
fi

exit 0
