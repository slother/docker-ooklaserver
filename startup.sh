#!/bin/bash

service apache2 start

su -c "./OoklaServer --daemon" speedtest

while true
    do
            sleep 1
            done

