#FROM ubuntu:22.04
FROM ubuntu:jammy
ARG LILYPOND_VERSION=2.22.1-2
RUN apt-get update && \
    apt-get -y install \
        "lilypond=${LILYPOND_VERSION}" \
        make \
        libpdf-api2-perl \
        libpdf-api2-xs-perl

#WORKDIR /build/fonts
#COPY . ./
#RUN make clean
