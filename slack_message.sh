echo $1
echo "$(curl -F file=@$1 -F channels=CHANNEL_HERE ,#general -F token=TOKEN_HERE https://slack.com/api/files.upload)"
