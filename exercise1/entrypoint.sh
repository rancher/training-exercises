#!/bin/bash

INDEX_PATH=/usr/share/nginx/html
INDEX_FILE=${INDEX_PATH}/index.html

mkdir -p ${INDEX_PATH}

create_host_file(){
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

create_service_file(){
cat >${INDEX_PATH}/service.html <<EOF
<html>
 <head>
    <title>Rancher Demo</title>
 </head>
 <body>
    <h2>Hello from $(curl http://rancher-metadata.rancher.internal/latest/self/service/name)</h2>
 </body>
</html>
EOF
}

create_host_file
create_service_file

exec nginx -g "daemon off;"
