# WhatHour-_BashProject
Discovering linux and Bash scripting through a smol datascrapping
Made with AWS EC2 Ubuntu VirtualMachine

## Linux Create directory

-$ mkdir project

-$ vim script.sh

-$ chmod +x script.sh

-$ vim script.sh

### Crontab fonctionnality to get actual time every minute (useful I swear)
-$ crontab -e
-$ * * * * * ./project/script.sh

## Script.sh edition with Vim text editor
see script.sh

## Features
This script scraps the website [Getamap](https://www.getamap.net/maps/) on various world cities (currently Miami City, Los Angeles and Tokyo) and get the local time of these locations using Grep Regex

Time is formated into a message that is broadcast in a telegram group with a bot (Note : My API key is visible in this script, plz don't abuse, i'll be sad 😿)

Telegram Group Link (to see actual time and get spammed until my AWS free trial expire 👿) : https://t.me/+doayaPUlnlQxZWZk

Thank you for Reading ! ♥
