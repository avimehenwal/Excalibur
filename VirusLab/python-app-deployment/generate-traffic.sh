#!/usr/bin/fish

# NAME      : TGen
# AUTHOR    : Avi Mehenwal
# DATE      : 4th October 2019
# PURPOSE   : Generate traffic for load balancer

if [ (count $argv) -eq 0 ]
    set TIMES 10
else if [ (count $argv) -eq 1 ]
    set TIMES $argv[1]
end

function gen -a TIMES -d 'Generate Traffic'
    for i in (seq $TIMES)
        curl --silent http://192.168.0.102:4000/ \
            | awk -F'<' '{print $5}' \
            | awk '{print$2}'
    end
end

gen $TIMES