# Python 3.5.0b4 dockerfile

# Pull base centos image
FROM centos

# Yum update
RUN yum update -y

# yum install packages needed to compile python
RUN yum install make gcc gcc-c++ vim bzip2 wget zlib zlib-devel openssl openssl-devel -y

# Download Python 3.5.0b4
RUN wget https://www.python.org/ftp/python/3.5.0/Python-3.5.0b4.tgz

# Extract Python 3.5.0b4 to /tmp
RUN tar xzvf Python-3.5.0b4.tgz --directory /tmp/

# Configure Python 3.5.0b4
RUN cd /tmp/Python-3.5.0b4 && ./configure

# Make Python 3.5.0b4
RUN cd /tmp/Python-3.5.0b4 && make

# Make install Python 3.5.0b4
RUN cd /tmp/Python-3.5.0b4 && make install

# Verify Python version
RUN python3 --version

# Remove builds
RUN rm -rf /tmp/Python-3.5.0b4 && rm -rf /Python-3.5.0b4.tgz
