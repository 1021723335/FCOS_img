
RUN pytorch/pytorch:1.7.1-cuda10.2-cudnn7-runtime
RUN apt-get update 
RUN apt-get upgrade 
RUN apt-get install vim
RUN apt-get install wget curl git
RUN wget -c https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
RUN bash  /usr/Downloads/Anaconda3-2019.07-Linux-x86_64.sh
RUN conda create --name FCOS python=3.7
RUN pip install ninja yacs cython matplotlib tqdm
RUN conda install pytorch torchvision cudatoolkit=10.2 -c pytorch
RUN git clone https://github.com/cocodataset/cocoapi.git
RUN cd cocoapi/PythonAPI
RUN python setup.py build_ext install
RUN git clone https://github.com/tianzhi0549/FCOS.git
RUN cd FCOS
RUN python setup.py build develop --no-deps
