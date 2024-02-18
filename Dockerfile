FROM ubuntu:22.04
RUN apt-get update && \
    apt-get -y install \
        lilypond \
        make \
        libpdf-api2-perl
WORKDIR /app
COPY . ./
#RUN make clean
RUN make -j 8 all
