FROM ubuntu:noble

# update base system
RUN apt-get update && apt-get upgrade -y --no-install-recommends

# install packages
RUN apt-get update && apt-get install -y --no-install-recommends \
	build-essential \
	libglew2.2 \
	libpython3.12-dev \
	nano \
        pip \
	python3-numpy \
	&& rm -rf /var/lib/apt/lists/*

# install pybullet
RUN pip3 install pybullet --break-system-packages
