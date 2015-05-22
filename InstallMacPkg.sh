#!/bin/sh

# author: Josh Westmoreland
# date:   2015/03/09

if [ -z $1 ]
then
    echo The input pkg cannot be blank. Please try again.
else
    sudo installer -pkg $1 -target /
fi
