
if [ "$1"="start" ]; then
    sudo launchctl load /Library/LaunchDaemons/org.jenkins-ci.plist
fi

if [ "$1"="stop" ]; then
    sudo launchctl unload /Library/LaunchDaemons/org.jenkins-ci.plist
fi
