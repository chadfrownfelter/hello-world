#!/bin/sh
echo "httpd started on port $PORT"
exec httpd -v -p $PORT -h /www -f
