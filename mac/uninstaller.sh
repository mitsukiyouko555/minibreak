#!/bin/bash
if crontab -l | grep "startminibreak.sh"; then
   crontab -l | grep -v "startminibreak.sh" | crontab
   echo "Removed the 'startminibreak.sh' Cron Job"
else
    echo "No Minibreak related Cron Jobs to remove"
fi

cd ~/.local/bin

if [ ! -f "startminibreak.sh" ]; then 
    echo "No file named startminibreak.sh found in path ~/.local/bin/"
else
    rm ~/.local/bin/startminibreak.sh
    echo "'startminibreak.sh' has been removed from the ~/.local/bin/ path."
fi

if [ ! -f "minibreak.sh" ]; then
    echo "No file named 'minibreak.sh' found in path ~/.local/bin/"
else
    rm ~/.local/bin/minibreak.sh
    echo "'minibreak.sh' has been removed from the ~/.local/bin/ path."
fi

exit
