#!/bin/bash
# A sample shell script
sudo apt install cowsay -y
cowsay -f dragon "Winter is Coming..." >> dragon.txt
grep -i "winter" dragon.txt
cat dragon.txt
ls -ltra