FROM python:2.7.13

RUN pip install pyminifier cython \
 && VER="17.03.0-ce" \
 && curl -L -o /tmp/docker-$VER.tgz https://get.docker.com/builds/Linux/x86_64/docker-$VER.tgz \
 && tar -xz -C /tmp -f /tmp/docker-$VER.tgz \
 && mv /tmp/docker/* /usr/bin \
 && rm -rf /var/lib/apt/lists/* /tmp/*
 