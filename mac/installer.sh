#!/bin/bash

chmod +x minibreak.sh && chmod +x startminibreak.sh 

cp startminibreak.sh ~/.local/bin/startminibreak.sh

cp minibreak.sh ~/.local/bin/minibreak.sh

cd ~/.local/bin

if [ -f "startminibreak.sh" ]; then
    echo "startminibreak.sh has been successfully moved to ~/.local/bin"
else
    echo "ERROR: startminibreak.sh has not been moved to ~/.local/bin"
fi

if [ -f "minibreak.sh" ]; then
    echo "minibreak.sh has been successfully moved to ~/.local/bin"
else
    echo "ERROR: minibreak.sh has not been moved to ~/.local/bin"
fi

if ! crontab -l | grep "startminibreak.sh"; then
    (crontab -l; echo "*/15 * * * * ~/.local/bin/startminibreak.sh") | crontab
    echo "A cron job has been created to run startminibreak.sh every 15 minutes."
exit
else
    echo "A cron job already exists for: startminibreak.sh"
fi
