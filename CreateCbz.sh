echo Creating $1.cbz...
sleep 2 
zip -r9 "$1.cbz" *.jpg *.JPG *.jpeg *.JPEG *.png *.PNG *.gif *.GIF

echo Remove files that have been atchived?
read RAF
if [ $RAF = y ]
then	
  rm *.jpg *.JPG *.jpeg *.JPEG *.png *.PNG *.gif *.GIF
fi
