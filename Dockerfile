FROM i386/ubuntu


RUN apt-get update && \
    apt-get install -y \
    curl \
    bzip2  \
    libjpeg62 \
    libsdl1.2-dev \
    libxi6 \
    libstdc++5 \
    python

RUN mkdir /usr/local/blender && \
    curl https://download.blender.org/release/Blender2.43/blender-2.43-linux-glibc232-py24-i386.tar.bz2 -o blender.tar.bz2 && \
    tar -jxvf blender.tar.bz2 -C /usr/local/blender --strip-components=1 && \
    rm blender.tar.bz2

ENV HOME /home/blender
CMD /usr/local/blender/blender