FROM ros:melodic-ros-core-bionic

RUN apt-get update && apt-get install -y git build-essential

RUN git clone https://github.com/borglab/gtsam.git /gtsam
RUN which gcc
WORKDIR /gtsam
RUN mkdir build
WORKDIR /gtsam/build
RUN cmake ..
RUN make install
WORKDIR /
