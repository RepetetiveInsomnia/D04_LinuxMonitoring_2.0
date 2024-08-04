#!/bin/bash

. ./error_check.sh
. ./get_info.sh
. ./lists.sh

rm -rf *.log
chmod +x *.sh

error_check

for (( i=5; i>0; i-- )); do
    time_shift=$(shuf -i 50-86 -n1)
    Lrows=$(shuf -i 100-1000 -n1)
    for (( j=0; j<$Lrows; j++ )); do
        
        get_info

        echo $IP_address" - - "$dateLog" \""$method" "$url" "$protocol"\" "$answer" "$randNnumber" \"-\" \""$agent"\"" >> log$i.log
        ((time_shift+=$(shuf -i 50-86 -n1) ))
    done
    dateInit="$(date +%Y)-$(date +%m)-$(date +%d) 00:00:00 $(date +%z)"
    dateInit="$(date -d "$dateInit - $((6-$i)) days" +'%Y-%m-%d')"  
done



exit 0