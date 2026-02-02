#!/bin/sh

if [ -n "$REDIRECT_PATHS" ]; then
    # sanitize and split paths
    PATHS=$(echo $REDIRECT_PATHS | tr ',' ' ')
    for path in $PATHS; do
        # remove leading slash for directory creation
        CLEAN_PATH=$(echo $path | sed 's|^/||')
        
        echo "Configuring endpoint: /$CLEAN_PATH"
        
        # create subdirectories if the path is nested
        mkdir -p "/www/$(dirname "$CLEAN_PATH")"
        
        echo "Redirected page: $path" > "/www/$CLEAN_PATH"
    done
fi

echo "httpd started on port $PORT"
exec httpd -v -p $PORT -h /www -f
