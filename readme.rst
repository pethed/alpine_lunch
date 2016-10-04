ABOUT
=====

Dockerfile that creates an image with the lunch menu for this week.

Let me know if you want the lunch menu from other restaurants as well.

USAGE
-----

Copy the Dockerfile to desired folder on your computer.

From that folder, run 
  
 docker build -t lunch:1 .
    
to build the image. After build completes run

 docker run --rm -i lunch:1 /bin/bash -c /root/days.sh
      
to view the menu.

To make things prettier add the following to your .bashrc
      
 alias lunch='docker run --rm -i lunch:1 /bin/bash -c days.sh'
