#!/bin/bash
sed -i 's/#ServerName www.example.com/ServerName localhost/' /etc/apache2/sites-available/000-default.conf

service apache2 start

su -c "./OoklaServer --daemon" speedtest

while true
    do
        sleep 1
    done

