#!/bin/bash

# Updates the page every 10 seconds

while [ 1 ]
do
        hash='<!-- '$(printf '%s' $(date) | md5sum | cut -d" " -f1)' -->'
        sed -i "1s/.*/$hash/" actual.html
        echo "<h1>$(date)</h1>" >> actual.html
        sleep 10;
done
