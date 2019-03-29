FROM centos:7

RUN yum install -y \
  gcc make openssl-devel bzip2-devel zip

WORKDIR /tmp
RUN curl "https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz" -o Python-2.7.15
RUN tar xzf Python-2.7.15
WORKDIR /tmp/Python-2.7.15
RUN ./configure --enable-optimizations
RUN make altinstall
WORKDIR /tmp

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python get-pip.py

RUN pip install virtualenv awscli cfn-lint
