FROM ubuntu:22.04
RUN apt-get update && \
    apt-get -y install \
        lilypond \
        make
WORKDIR /app
COPY . ./
RUN make all
