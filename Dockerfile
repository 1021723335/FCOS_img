FROM devopsbay/detectron2-cuda:v1
RUN wget https://developer.download.nvidia.com/compute/cuda/11.1.1/local_installers/cuda_11.1.1_455.32.00_linux.run \
    && sudo sh cuda_11.1.1_455.32.00_linux.run
RUN /usr/bin/python -m pip install --upgrade pip \
    && pip install torch==1.8.1+cu111 torchvision==0.9.1+cu111 torchaudio==0.8.1 -f https://download.pytorch.org/whl/torch_stable.html \
    && pip install lxml
