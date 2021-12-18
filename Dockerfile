FROM bearcats/fcos:latest

RUN apt-get -f install
RUN pip install lxml \
matplotlib \
numpy \
tqdm \
pycocotools \
Pillow
