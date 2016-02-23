SCRIPT_FRAGMENT=$1
ACTION=$2

for i in $SCRIPT_FRAGMENT; do echo $i; $i $ACTION; done