# docker-pybullet
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg?style=plastic)](https://github.com/UNF-Robotics/docker-pybullet/blob/master/LICENSE.txt)
[![Docker Image Status](https://github.com/UNF-Robotics/docker-pybullet/actions/workflows/main.yml/badge.svg/)](https://github.com/UNF-Robotics/docker-pybullet/actions)

Docker image with [pybullet](https://github.com/bulletphysics/bullet3)
Development Environment for various robotics purposes at UNF, club,
research, and development. This container contains the initial
environment to build and run simulations using pybullet.

[Latest](https://hub.docker.com/r/ospreyrobotics/docker-pybullet/tags)

## Docker Pull Command
```bash
docker pull ospreyrobotics/docker-pybullet:latest
```

## enable X11 ssh forwarding
Enable in sshd and restart
```
sudo nano /etc/ssh/sshd_config

X11Forwarding yes
```

Enable X server access
```bash
sudo xhost +local:docker
sudo xhost +
```

### Run Command on Linux
The following command will open a terminal to the newly created
container that uses the host computers network. The example shares
the `/dev` directory with the container and an example local project
directory `/project/unf-robotics` to internal directory
`/opt/unf-robotics` for development.
```bash
docker run --net=host --rm -it --env DISPLAY=$DISPLAY --privileged \
    -v /dev:/dev -v /project/unf-robotics/:/opt/unf-robotics \
    ospreyrobotics/docker-pybullet:latest
```
