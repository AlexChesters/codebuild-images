FROM centos:7

RUN yum install -y \
  gcc make openssl-devel bzip2-devel zip unzip

# https://github.com/cracklib/cracklib/issues/7
RUN unlink /usr/sbin/packer

RUN curl \
  "https://releases.hashicorp.com/packer/1.3.4/packer_1.3.4_linux_amd64.zip" \
  -o packer.zip
RUN unzip packer.zip -d packer
RUN mv packer /usr/local/
ENV PATH="$PATH:/usr/local/packer"
