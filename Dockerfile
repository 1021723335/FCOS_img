FROM 1021723335/fcos_img:v1.4.7
RUN /opt/conda/bin/python -m pip install --upgrade pip \
    && pip install pycocotools \
    && pip install lxml \
    && apt --fix-broken install -y \
    && apt install sudo \
    && apt install wget \
    && apt install unzip -y \
    && wget -c --referer=https://pan.baidu.com/s/1IyeeLCn0pP9ReSryN2Uedg -O detectron2.zip "https://bjbgp01.baidupcs.com/file/53a6d97dak209159652835a993c10cdb?bkt=en-6f7dc9883530f8c97e5d3e9c888c6d5503453b6f8f97b29dcc707758d2a1adcae4925a643c91973a2c5a743573777df923756ffd953459d46ac57384071a0cdd&fid=131966578-250528-998211422882845&time=1672046693&sign=FDTAXUbGERLQlBHSKfWqiu-DCb740ccc5511e5e8fedcff06b081203-bnZowFLaMGFD3ELGEGD1c1ri1IE%3D&to=75&size=1387024&sta_dx=1387024&sta_cs=0&sta_ft=zip&sta_ct=0&sta_mt=0&fm2=MH%2CXian%2CAnywhere%2C%2C%E7%A6%8F%E5%BB%BA%2Cce&ctime=1672046563&mtime=1672046563&resv0=0&resv1=0&resv2=rlim&resv3=5&resv4=1387024&vuk=131966578&iv=0&htype=&randtype=&tkbind_id=0&newver=1&newfm=1&secfm=1&flow_ver=3&pkey=en-dad1c5cb838fee8e5f1fa6a6bee9eea49c91fa1838d5e6b8b8d9227f5c701a2fbe019e553109e1a7bdbd6937061e6c7da9cb3ffa6baf3227305a5e1275657320&sl=68616270&expires=8h&rt=sh&r=502297778&vbdid=2540806473&fin=detectron2.zip&fn=detectron2.zip&rtype=1&dp-logid=272602009111011667&dp-callid=0.1&hps=1&tsl=200&csl=200&fsl=0&csign=lAINbgfejeQIXfnWozArulqvoTM%3D&so=0&ut=6&uter=4&serv=0&uc=2653423779&ti=51d76b5cdb7a87d2d5684ab47a56f021621ea6d14fd53b34305a5e1275657320&hflag=30&from_type=1&adg=c_5baa8f07562f737feda5ddd38a9d43af&reqlabel=250528_f_a7bea8ddffa973abb8487bf642ba5c1e_-1_0fc3a54f36c2cf885471058884653c00&by=themis&resvsflag=1-0-0-1-1-1" \
    && unzip detectron2.zip \
    && rm -rf detectron2.zip \
#     && cd detectron2 \
#     && pip install -r requirements.txt \
    && python -m pip install -e detectron2
    && pip install -q tensorflow
    && pip install tfds-nightly==4.4.0.dev202201080107
    && pip install opencv-python
    && pip install tensorflow-addons
    && pip install mock
    && pip install opencv-python
    && pip install tqdm pandas matplotlib seaborn scikit-learn scipy simplejson termcolor
    && pip install -c iopath iopath
    && pip install timm==0.4.12
    && pip install ml-collections
    && pip install submitit -U
    && pip install slurm_gpustat
