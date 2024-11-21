# ml-docker
Build custom docker image for the purpose of machine learning.


docker build -f Dockerfile -t ml-docker .

docker run -p 2222:22 ml-docker

ssh derek@<host> -p 2222
