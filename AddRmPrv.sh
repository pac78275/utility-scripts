#!/bin/bash

if [ $1 = add ]
then
sudo dscl . append /Groups/admin GroupMembership $2
  dscl . -list /groups GroupMembership | grep -i $2
fi

if [ $1 = remove ]
then
  sudo dscl . -delete /Groups/admin GroupMembership $2
  dscl . -list /groups GroupMembership | grep -i $2
fi
