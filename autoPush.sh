#!/bin/bash
while true; do

inotifywait -e modify,create,delete -r /home/zed/.dotfiles/ && \
git add -A && git commit -m "Auto Commit" && git push origin main 

done
