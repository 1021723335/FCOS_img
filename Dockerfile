FROM 1021723335/fcos_img:v1.5.3
RUN /opt/conda/bin/python -m pip install --upgrade pip \
    && pip install pycocotools \
    && pip install lxml \
    && pip install -q tensorflow \
    && pip install tfds-nightly==4.4.0.dev202201080107 \
    && pip install opencv-python \
    && pip install tensorflow-addons \
    && pip install mock \
    && pip install opencv-python \
    && pip install tqdm pandas matplotlib seaborn scikit-learn scipy simplejson termcolor \
    && pip install -c iopath iopath \
    && pip install timm==0.4.12 \
    && pip install ml-collections \
    && pip install submitit -U \
    && pip install slurm_gpustat
