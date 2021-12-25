FROM zqing10/docker:v1.3.4
RUN /usr/bin/python -m pip install --upgrade pip \
    && pip install pycocotools \
    && pip install lxml
