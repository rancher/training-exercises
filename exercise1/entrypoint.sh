#!/bin/bash

INDEX_PATH=/usr/share/nginx/html
INDEX_FILE=${INDEX_PATH}/index.html

mkdir -p ${INDEX_PATH}

create_file(){
cat >${INDEX_FILE} <<EOF
<html>
 <head>
    <title>Rancher Demo</title>
 </head>
 <body>
    <h2>Hello from $(hostname)</h2>    
 </body>
</html>
EOF
}


create_file

exec nginx -g "daemon off;"
