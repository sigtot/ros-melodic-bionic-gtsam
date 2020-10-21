FROM ros:melodic-ros-core-bionic

RUN apt-get -y update && apt-get -y install
RUN apt-get install -y git build-essential apt-utils
RUN apt-get -y install libboost-all-dev
RUN apt-get -y install python-catkin-tools

RUN git clone https://github.com/borglab/gtsam.git /gtsam
WORKDIR /gtsam
RUN mkdir build
WORKDIR /gtsam/build
RUN cmake ..
RUN make install
WORKDIR /
