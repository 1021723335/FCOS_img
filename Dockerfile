FROM bearcats/fcos:latest

RUN apt-get -f install
RUN apt install sudo
RUN apt install unzip
RUN apt install dos2unix
RUN pip install lxml \
matplotlib \
numpy \
tqdm \
pycocotools \
Pillow
