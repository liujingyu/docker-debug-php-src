FROM centos:7

RUN yum -y update
RUN yum -y install vim gcc gdb rsync  openssh-server wget  git make autoconf glibc gcc-c++  bison libmcrypt-devel mhash-devel libxslt-devel libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel libxml2 libxml2-devel zlib zlib-devel glibc-devel glib2 glib2-devel bzip2 bzip2-devel ncurses ncurses-devel curl curl-devel e2fsprogs e2fsprogs-devel krb5 krb5-devel libidn libidn-devel openssl openssl-devel libcurl-devel gd gd-devel libmcrypt libtool libcrypt tree
RUN yum -y install https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/r/re2c-0.14.3-2.el7.x86_64.rpm
RUN debuginfo-install -y glibc-2.17-292.el7.x86_64 nss-softokn-freebl-3.44.0-8.el7_7.x86_64

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py && pip install gdbgui

RUN mkdir -p /root/bin
RUN curl https://beyondgrep.com/ack-2.22-single-file > ~/bin/ack && chmod 0755 ~/bin/ack
RUN export PATH=$PATH:/root/bin


# ADD . /code

WORKDIR /code

RUN cd /code && git clone https://github.com/php/php-src.git

RUN cd /code/php-src && git checkout PHP-7.1 && ./buildconf  && ./configure --with-openssl --enable-debug --prefix=$HOME/myphp  CFLAGS="-g3 -gdwarf-4" && make && make install

RUN export PATH=$PATH:/root/myphp/bin

CMD ["/usr/sbin/sshd", "-D"]

