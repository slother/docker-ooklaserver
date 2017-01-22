#!/bin/bash

service apache2 start

su -c "./OoklaServer" speedtest

#while true
#    do
#        sleep 1
#    done

