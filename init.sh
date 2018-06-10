#!/bin/bash

sudo rm /etc/nginx/sites-enabled/default

sudo ln -s -f /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
echo "restarting nginx"
sudo /etc/init.d/nginx restart

# sudo ln -s -f /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
# sudo /etc/init.d/gunicorn restart
echo "starting gunicorn"
/home/box/web/gu_start.sh

# sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
# sudo /etc/init.d/nginx restart
# sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
# sudo /etc/init.d/gunicorn restart
# sudo /etc/init.d/mysql start
