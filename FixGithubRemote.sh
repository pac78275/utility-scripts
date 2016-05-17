# author:      Josh Westmoreland
# date:        23/09/2015
# email:       joshua.westmoreland@me.com
# description: Alaises for commonly used commands

USER=pac78275

if [ "$1" = "https" ]
then 
  REMOTE='https://github.com/'
elif
  REMOTE='git@github.com:'
fi

for i in $(ls $1)
do 
  echo Setting up $i for SSH pull/push...
  cd $i
  
  if [ "$(git remote -v | grep $USER)" != "" ]
  then
    echo OLD REMOTE: 
    git remote -v
    git remote set-url origin $REMOTE$USER/$i.git
    echo NEW REMOTE:
    git remote -v
  else
    echo Not a repository own by $USER. Moving on...
  fi
    
  cd ~/Github
done