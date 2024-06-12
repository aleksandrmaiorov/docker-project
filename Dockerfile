FROM centos:7

# Install necessary packages in one step to reduce layer size
RUN yum update -y && \
    yum install -y epel-release && \
    yum makecache -y && \
    yum install -y \
    gawk make wget tar bzip2 gzip \
    python3 unzip perl patch diffutils \
    diffstat git cpp gcc gcc-c++ \
    glibc-devel texinfo chrpath socat \
    perl-Data-Dumper perl-Text-ParseWords \
    perl-Thread-Queue python36-pip xz which \
    SDL-devel xterm mesa-libGL-devel && \
    yum clean all && \
    rm -rf /var/cache/yum

# Install Python packages
RUN pip3 install --no-cache-dir \
    GitPython jinja2

# Clean up unnecessary files to reduce image size
RUN rm -rf /tmp/* /var/tmp/*
