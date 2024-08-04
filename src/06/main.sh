#!/bin/bash

. ./error_check.sh


error_check $1
if [[ -f report.html ]]; then
rm -f report.html
fi

if [[ $scriptMode = 1 ]]; then
    additional="--sort-panel=STATUS_CODES,BY_DATA,ASC"
    sudo goaccess -p goaccess.conf -f ../04/log*.log "$additional" --date-format=%d/%b/%Y --log-format='%h %^ %^ [%d:%t %^] \"%r\" %s %b %^ %u' --time-format=%T -o report.html
elif [[ $scriptMode = 2 ]]; then
    additional="--sort-panel=HOSTS,BY_VISITORS,ASC"
    sudo goaccess -p goaccess.conf -f ../04/log*.log --ignore-panel=STATUS_CODES --ignore-panel=REQUESTS --ignore-panel=OS --ignore-panel=BROWSERS --ignore-panel=VISIT_TIMES "$additional" --date-format=%d/%b/%Y --log-format='%h %^ %^ [%d:%t %^] \"%r\" %s %b %^ %u' --time-format=%T -o report.html
elif [[ $scriptMode = 3 ]]; then
    additional="--sort-panel=STATUS_CODES,BY_DATA,ASC"
    sudo goaccess -p goaccess.conf -f ../04/log*.log --ignore-status=200 --ignore-status=201 --ignore-panel=HOSTS --ignore-panel=STATUS_CODES --ignore-panel=VISITORS --ignore-panel=OS --ignore-panel=BROWSERS --ignore-panel=VISIT_TIMES "$additional" --date-format=%d/%b/%Y --log-format='%h %^ %^ [%d:%t %^] \"%r\" %s %b %^ %u' --time-format=%T -o report.html
elif [[ $scriptMode = 4 ]]; then
    additional="--sort-panel=HOSTS,BY_VISITORS,ASC"
    sudo goaccess -p goaccess.conf -f ../04/log*.log --ignore-status=200 --ignore-status=201 --ignore-panel=STATUS_CODES --ignore-panel=REQUESTS --ignore-panel=OS --ignore-panel=BROWSERS --ignore-panel=VISIT_TIMES "$additional" --date-format=%d/%b/%Y --log-format='%h %^ %^ [%d:%t %^] \"%r\" %s %b %^ %u' --time-format=%T -o report.html
fi




   

exit 0