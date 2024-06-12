FROM centos:7
RUN yum update -y
RUN yum install -y epel-release
RUN yum makecache -y
RUN yum install -y gawk make wget tar bzip2 gzip python3 unzip perl patch diffutils diffstat git cpp gcc gcc-c++ glibc-devel texinfo chrpath socat perl-Data-Dumper perl-Text-ParseWords perl-Thread-Queue python36-pip xz which SDL-devel xterm mesa-libGL-devel
RUN pip3 install GitPython jinja2
