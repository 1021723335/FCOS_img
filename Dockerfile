FROM gpuci/miniconda-cuda:11.5-devel-ubuntu20.04
# first, make sure that your conda is setup properly with the right environment
# for that, check that `which conda`, `which pip` and `which python` points to the
# right path. From a clean conda env, this is what you need to do

RUN conda create --name FCOS
RUN conda activate FCOS

# this installs the right pip and dependencies for the fresh python
RUN conda install ipython

# FCOS and coco api dependencies
RUN pip install ninja yacs cython matplotlib tqdm

# follow PyTorch installation in https://pytorch.org/get-started/locally/
# we give the instructions for CUDA 10.2
RUN conda install pytorch torchvision cudatoolkit=10.2 -c pytorch

RUN export INSTALL_DIR=$PWD

# install pycocotools. Please make sure you have installed cython.
RUN cd $INSTALL_DIR
RUN git clone https://github.com/cocodataset/cocoapi.git
RUN cd cocoapi/PythonAPI
RUN python setup.py build_ext install

# install PyTorch Detection
RUN cd $INSTALL_DIR
RUN git clone https://github.com/tianzhi0549/FCOS.git
RUN cd FCOS

# the following will install the lib with
# symbolic links, so that you can modify
# the files if you want and won't need to
# re-build it
RUN python setup.py build develop --no-deps


RUN unset INSTALL_DIR

# or if you are on macOS
# MACOSX_DEPLOYMENT_TARGET=10.9 CC=clang CXX=clang++ python setup.py build develop
