#!/bin/sh

# author: Josh Westmoreland
# date:   2016/03/14
# email:  pac78275@gmail.com

INTERPRETER=$1
DELIMITER=$2
CODE=$3

$INTERPRETER - << $DELIMITER
$CODE
$DELIMITER
