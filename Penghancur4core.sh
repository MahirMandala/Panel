#!/bin/bash

for i in {1..9}; do
    screen -dmS bw$i bash -c "
        counter=0
        download_path=/root/download/$i

        while true; do
            ((counter++))
            echo \"Running the script for the \$counter time(s) in session bw$i\"

            rm -rf \$download_path/*
            wget -P \$download_path https://ash-speed.hetzner.com/10GB.bin
            rm -rf \$download_path/*
            clear
            
        done
    "
done
