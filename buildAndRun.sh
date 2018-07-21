#!/bin/sh
mvn clean package && docker build -t com.mp.api/streams .
docker rm -f streams || true && docker run -d -p 8080:8080 -p 4848:4848 --name streams com.mp.api/streams 
