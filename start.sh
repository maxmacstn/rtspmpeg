#!/bin/sh

rm -r /var/www/localhost/cgi-bin/*
python3 /scripts/create_cgi.py
ls -l /var/www/localhost/cgi-bin/
exec lighttpd -D -f /etc/lighttpd/lighttpd.conf
