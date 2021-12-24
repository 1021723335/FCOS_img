FROM devopsbay/detectron2-cuda:v1
RUN /usr/bin/python -m pip install --upgrade pip \
    && pip install torch==1.7.1+cu101 torchvision==0.8.2+cu101 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html 
