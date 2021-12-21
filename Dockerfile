FROM cosword/mydocker:v1.4.6

RUN apt-get -f install
RUN pip install lxml \
matplotlib \
numpy \
tqdm \
pycocotools \
Pillow
