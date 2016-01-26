# where $1 will be append or delete
sudo dscl . -$1 /Groups/admin GroupMembership $(whoami)
dscacheutil -q group -a name admin
