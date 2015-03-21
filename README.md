##Clonobucket
---------------------

##Introduction
---------------------
Clonobucket is a simplified "Photobucket" knockoff, using Ruby on Rails to enable you to store your pictures in a database. It uses the the Paperclip gem for storing images in the file system, and the Bcrypt gem for password encryption with home made login/account handling.   

##Requirements
---------------------
To run this you will need Ruby on Rails 4 and Postgres installed on your Linux or OSX computer, and the ImageMagick gem, which can be installed using Brew or Apt-get.  

##Instructions
---------------------
CD into the Clonobucket directory and run the following commands:  
$ bundle  
$ rake db:create  
$ rake db:migrate  
$ rake db:test:prepare  
$ rails server  
Now open a browser and go to localhost:3000 and you are blogging in style, my friend!  

##Maintainer
---------------------
Dan Wright
http://danwright.co


##Copyright
---------------------
2015 Dan Wright


##License
---------------------
GPL V2
