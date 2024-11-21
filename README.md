# ml-docker
Build custom docker image for the purpose of machine learning.


docker build -f Dockerfile -t ml-docker .

# local
docker run -p 2222:22 ml-docker

ssh derek@<host> -p 2222

# cloud
docker save ml-docker | simcloud bundle upload --cluster=simcloud-mr2 -

simcloud bundle list --cluster=simcloud-mr2

simcloud job run -c mr2 --cpus 2 --gpus 1 --attributes gpu_architecture:Tesla --timeout 14d --ssh --ssh-login --docker-image bundle-1234 

