FROM tensorflow/tensorflow:1.3.0-gpu-py3

RUN apt-get update && apt-get install -y --no-install-recommends python3-tk git wget && \
	rm -rf /var/lib/apt/lists/*
RUN pip install numpy==1.13.1 opencv_python==3.2.0.7 matplotlib==2.0.2 easydict==1.6

WORKDIR /home/od/
RUN mkdir /home/od/data /home/od/scripts /home/od/outputs && git clone https://github.com/MaybeShewill-CV/CRNN_Tensorflow
ENTRYPOINT ["/home/od/scripts/entrypoint.sh"]
