FROM ubuntu:16.04
#Metadata
LABEL MAINTAINER puskar@test.com
arg image_variable="local"
env ora_port1=1521
run mkdir /code
COPY sample.sh /code/sample.sh
run chmod +x /code/sample.sh
run echo " building ubuntu image"
run echo $image_variable
workdir /code
cmd sh /code/sample.sh
