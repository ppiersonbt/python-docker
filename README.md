Dockerfile for Python 3.5.0b4

Build without dockerfile:

docker build -t ppierson/python github.com/ppiersonbt/python-docker.git

Build with dockerfile:

docker build -t 'python' .

Run with:

docker run -it python /bin/bash

Python3 is available via the command 'python3'
Pip3 is available via the command 'pip3'
