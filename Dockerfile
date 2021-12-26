FROM zqing10/docker:v1.3.4
RUN /opt/conda/bin/python -m pip install --upgrade pip \
    && pip install pycocotools \
    && pip install lxml \
    && apt --fix-broken install -y \
    && python -m pip install detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cu111/torch1.10/index.html \
    && apt install sudo
