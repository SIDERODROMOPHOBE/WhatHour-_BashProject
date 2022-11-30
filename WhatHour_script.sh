#!/bin/bash

clear
curl "https://www.getamap.net/maps/united_states/florida/miami-dade/_miami_sunset_senior_high_school/" > urlfile

cat urlfile | grep -oE "[0-9]+[0-9]+:+[0-9]+[0-9]+;." | grep -oE "[0-9]+[0-9]+:+[0-9]+[0-9]" > miamihour

curl "https://www.getamap.net/maps/united_states/california/los_angeles/_los_feliz_branch_los_angeles_public_library/" > urlfile2

cat urlfile2 | grep -oE "[0-9]+[0-9]+:+[0-9]+[0-9]+;." | grep -oE "[0-9]+[0-9]+:+[0-9]+[0-9]" > LAhour

curl "https://www.getamap.net/maps/japan/tokyo/_tokyo/" > urlfile3

cat urlfile3 | grep -oE "[0-9]+[0-9]+:+[0-9]+[0-9]+;." | grep -oE "[0-9]+[0-9]+:+[0-9]+[0-9]" > tokyohour

clear
curl 'https://api.telegram.org/bot5761036234:AAE5u89J0-Z39KouUoq9Di6Ike_nkIRxwdE/sendMessage?chat_id=-1001821828977&text=Current_Time_in_LA_is_'$(<LAhour)''


curl 'https://api.telegram.org/bot5761036234:AAE5u89J0-Z39KouUoq9Di6Ike_nkIRxwdE/sendMessage?chat_id=-1001821828977&text=Current_Time_in_Miami_is_'$(<miamihour)''


curl 'https://api.telegram.org/bot5761036234:AAE5u89J0-Z39KouUoq9Di6Ike_nkIRxwdE/sendMessage?chat_id=-1001821828977&text=Current_Time_in_Tokyo_is_'$(<tokyohour)''


clear


echo "Current time in Los Angeles is $(<LAhour)"

echo "Current time in Miami City is $(<miamihour)"

echo "Current time in Tokyo is $(<tokyohour)"

exit
     