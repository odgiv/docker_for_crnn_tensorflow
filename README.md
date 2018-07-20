This is a repository for building and running crnn_tensorflow on docker container.   
The original repository is here: https://github.com/MaybeShewill-CV/CRNN_Tensorflow

Make sure that [nvidia-docker2](https://github.com/NVIDIA/nvidia-docker) is running on your machine if you want to run this on docker with gpu.  
The [docker-compose](https://github.com/docker/compose) is used in order to build and run docker containers. Docker compose version must be 1.19.0 or higher in order to run nvidia-docker2 from inside of docker-compose.

You have to add this line in your docker-compose.yml file.
```
runtime: nvidia
```
