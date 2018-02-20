#!/bin/bash

service apache2 start
su -c "./OoklaServer" speedtest
