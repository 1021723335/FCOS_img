FROM zqing10/docker:v1.3.4
RUN /opt/conda/bin/python -m pip install --upgrade pip \
    && pip install pycocotools \
    && pip install lxml \
    && apt --fix-broken install -y \
    && apt install git -y \
    && git clone https://github.com/facebookresearch/detectron2.git \
    && cd detectron2 \
    && python setup.py build develop
