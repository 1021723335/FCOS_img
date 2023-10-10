FROM zqing10/docker:v1.3.4
RUN /opt/conda/bin/python -m pip install --upgrade pip \
    && pip install pycocotools \
    && pip install lxml \
    && apt --fix-broken install -y \
    && apt install sudo \
    && apt install wget \
    && apt install unzip -y 

RUN git clone https://github.com/facebookresearch/detectron2.git

# 从源码安装detectron2
WORKDIR /workspace/detectron2
RUN python -m pip install -e .

WORKDIR /workspace
# 克隆Dassl仓库
RUN git clone https://github.com/KaiyangZhou/Dassl.pytorch.git

# 从源码安装Dassl
WORKDIR /workspace/Dassl.pytorch
RUN pip install -r requirements.txt
RUN python setup.py develop
