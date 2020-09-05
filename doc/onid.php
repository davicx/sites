<?php 

    Get connected to your ONID home directory. Instructions for that can be found here: https://oregonstate.teamdynamix.com/TDClient/KB/ArticleDet?ID=45671
    Use an SSH client to connect to: shell.onid.oregonstate.edu
    Commands for creating your public_html directory, if you don't already have one:
    cd mkdir
    public_html
    chmod 755 public_html
    Write your HTML pages using an HTML/text editor.
    Move your files into the public_html folder.
    Moving your .html files to your public_html directory can be done from any machine with an internet connection. Please read the Connecting to your Home Directory instructions.
    Once your files are on the server, they must be configured so that people can read them.
    Typically, your files should already have the right permissions on them. However, there are some instances where your transferred files won't be seen when you try to access them through the web. If this happens to you, then you can fix it in a few easy steps using shell access.
    Commands for changing permissions on your .html files in your public_html directory:
    cd ~/public_html
    find ./ -type d -exec chmod 755 {} \;
    find ./ -type f -exec chmod 644 {} \;
    Once everything is completed, you should be able to view your web page by visiting http://people.oregonstate.edu/~vasquezd/ in any basic web browser (Firefox, Internet Explorer) -- just replace "username" with your ONID username.
    Before you give out your web address to all your friends, make sure to go check it yourself to see if you made any errors.


//Path Information for Shareshare.co
dirname(__FILE__) from Notifications calling constants /home/californiachris/public_html/shareshare.co/functions/includes
dirname(__FILE__) from Notifications.php /home/californiachris/public_html/shareshare.co/functions/classes
realpath(__DIR__) from Notifications /home/californiachris/public_html/shareshare.co/functions/classes
dirname(__FILE__) from constants /home/californiachris/public_html/shareshare.co/functions/includes
dirname(__FILE__) from wall.php /home/californiachris/public_html/shareshare.co/site_files
realpath(__DIR__) from Wall.php called as variable from notifiations /home/californiachris/public_html/shareshare.co/functions/classes
realpath(__DIR__) from Wall.php /home/californiachris/public_html/shareshare.co/site_files 

//Path Information for localhost
dirname(__FILE__) from Notifications calling constants C:\wamp\www\sites\functions\includes
dirname(__FILE__) from Notifications.php C:\wamp\www\sites\functions\classes
realpath(__DIR__) from Notifications C:\wamp\www\sites\functions\classes
dirname(__FILE__) from constants C:\wamp\www\sites\functions\includes
dirname(__FILE__) from wall.php C:\wamp\www\sites\shareshare\site_files
realpath(__DIR__) from Wall.php called as variable from notifiations C:\wamp\www\sites\functions\classes
realpath(__DIR__) from Wall.php C:\wamp\www\sites\shareshare\site_files 


?>