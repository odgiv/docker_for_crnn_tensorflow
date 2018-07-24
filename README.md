This is a repository for building and running crnn_tensorflow on docker container.   
The original repository is here: https://github.com/MaybeShewill-CV/CRNN_Tensorflow

Make sure that [nvidia-docker2](https://github.com/NVIDIA/nvidia-docker) is running on your machine if you want to run this on docker with gpu.  
The [docker-compose](https://github.com/docker/compose) is used in order to build and run docker containers. Docker compose version must be 1.19.0 or higher in order to run nvidia-docker2 from inside of docker-compose.

You have to add this line in your docker-compose.yml file.
```
runtime: nvidia
```

You can include ```entrypoint.sh``` file in your ```../scripts``` local directory if you want to run it when docker container starts running.

**Note**: Run  ```export PYTHONPATH="${PYTHONPATH}:/home/od/CRNN_Tensorflow"``` before running anything else etc., training or testing commands.

Since we're using tensorflow docker image for python3, you have run every command with ```python3``` instead just ```python```. 

Commands:  
Assuming you're in CRNN_Tensorflow directory.
1. To test the model:  
```
python3 tools/test_shadownet.py --dataset_dir data/ --weights_path model/shadownet/shadownet_2017-09-29-19-16-33.ckpt-39999
```

To test a single image:
```
python3 tools/demo_shadownet.py --image_path data/test_images/test_01.jpg --weights_path model/shadownet/shadownet_2017-09-29-19-16-33.ckpt-39999
```

2. To train new model:
```
python3 tools/train_shadownet.py --dataset_dir path/to/your/tfrecords
```

You can also continue the training process from the snapshot by:
```
python3 tools/train_shadownet.py --dataset_dir path/to/your/tfrecords --weights_path path/to/your/last/checkpoint
```
