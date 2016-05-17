#!/bin/bash

ME=$(whoami)
ACTION=''

if [ "$1" = "add" ]; then ACTION=append; elif [ "$1" = "remove" ]; then ACTION=delete; fi

if [ "$ACTION" = "" ]; then echo No action specified. Exiting...; exit 1; fi

sudo dscl . -$ACTION /Groups/admin GroupMembership $ME
dscl . -list /groups GroupMembership | grep -i $ME
