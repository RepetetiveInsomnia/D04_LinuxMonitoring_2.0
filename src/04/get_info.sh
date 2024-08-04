#!/bin/bash

function get_info {
        IP_address="$(shuf -i 1-254 -n1)"."$(shuf -i 1-254 -n1)"."$(shuf -i 1-254 -n1)"."$(shuf -i 1-254 -n1)"
        answer="$(shuf -e ${answer_list} -n1)"
        method="$(shuf -e ${method_list}  -n1)"
        dateLog="[$(date -d "$dateInit + $time_shift seconds"  +'%d/%b/%Y:%H:%M:%S %z')]"  
        url="$(shuf -e ${url_list}  -n1)"
        agent="$(shuf agents.txt -n1)"
        protocol="$(shuf -e ${protocol_list}  -n1)"
        randNumber="$(shuf -i 1-120000 -n1)"
}