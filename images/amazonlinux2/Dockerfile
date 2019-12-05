FROM amazonlinux:2

RUN yum update -y
RUN yum group install -y "Development Tools"
RUN yum install -y \
  git \
  zlib-devel \
  openssl-devel \
  ncurses-devel \
  libffi-devel \
  sqlite-devel.x86_64 \
  readline-devel.x86_64 \
  bzip2-devel.x86_64
# tar \
# gcc \
# make \
# zlib \


RUN git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git
RUN ./aws-elastic-beanstalk-cli-setup/scripts/bundled_installer

ENV PATH="/root/.ebcli-virtual-env/executables:${PATH}"
