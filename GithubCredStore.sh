# developer: Josh Westmoreland
# date:      2016/05/17
# email:     pac78275@gmail.com

USER='pac78275'
GITHUB_DIR='~/Github'

function cred_store()
{
  echo Setting up $1 for credential store...
  ORIGIN=$(pwd)
  cd $GITHUB_DIR/$1  
  git config credential.helper store
  git push https://github.com/$2/$1.git
  cd $ORIGIN
}

if [ "$1" = "all" ]
then
  for i in $(ls $GITHUB_DIR)
  do 
    if [ "$(git remote -v | grep $USER)" != "" ]
    then
      cred_store $i $USER
    fi
  done
else
  cred_store $1 $USER
fi
