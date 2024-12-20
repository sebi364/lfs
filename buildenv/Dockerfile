FROM debian:bookworm

# Install dependencies
RUN apt-get update -y &&\
    apt-get install -y bash bc binutils coreutils diffutils file findutils gawk grep gzip m4 man-db libncurses5-dev libncursesw5-dev procps psmisc sed tar util-linux zlib1g zlib1g-dev perl python3 gcc g++ bison make patch texinfo xz-utils yacc wget curl

# verify dependencies
COPY ./verify.sh /verify.sh
RUN bash /verify.sh

# create buildscripts dir
RUN mkdir /buildscripts
WORKDIR /buildscripts
