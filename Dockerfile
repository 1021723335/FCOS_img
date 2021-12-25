FROM devopsbay/detectron2-cuda:v1
RUN /usr/bin/python -m pip install --upgrade pip \
    && pip install torch==1.8.1+cu101 torchvision==0.9.1+cu101 torchaudio==0.8.1 -f https://download.pytorch.org/whl/torch_stable.html \
    && pip install lxml
