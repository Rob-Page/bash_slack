#!/bin/bash
#pops off last number from the list and adds a .zip
zipExt="${TEST[@]::-1}.zip"
#run zip command
echo "$(zip -r $zipExt $1)"
#run curl to push out to the channel
echo "$(curl -F file=@$zipExt -F channels=CHANNEL_HERE ,#general -F token=TOKEN_HERE https://slack.com/api/files.upload)"
#delete zip file that was made to push out
echo "$(rm $zipExt)"