#
# Stefann Docker
#

# Tensorflow Latest Release + Python 2.7 + pip
FROM tensorflow/tensorflow:latest-py3

# Set the working directory.
WORKDIR /

RUN apt-get update

# Core linux dependencies. 
RUN apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    unzip \
    yasm \
    pkg-config \
    libswscale-dev \
    libtbb2 \
    libtbb-dev \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    libavformat-dev \
    libhdf5-dev \
    libpq-dev \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libgl1-mesa-dev

RUN pip install --upgrade pip

# Python dependencies
RUN pip --no-cache-dir install \
    numpy \
    colorama \
    keras \
    pillow \
    requests \
    opencv-python==4.1.0.* \
    PyQt5

# Create application directory
RUN mkdir app

# Final state
WORKDIR /app