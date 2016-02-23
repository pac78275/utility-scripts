HOME=/Users/jwestmor
REMOTE=/Volumes/jwestmor

if [ -d $REMOTE ]
then 
  echo Remote drive $REMOTE already mounted!
else
  exit 1
fi

sudo rsync -rav --exclude=$HOME/Reading $HOME $REMOTE/MBP_Backup/ 
