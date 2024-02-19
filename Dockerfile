ARG BASE=ubuntu:jammy
ARG LILYPOND_VERSION=2.22.1-2
ARG GUILE_VERSION=2.2

########################################################################################
# Install Microsoft fonts in a new ubuntu environment
########################################################################################
FROM $BASE AS build-fonts
WORKDIR /build/msfonts
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections && \
    apt-get --yes update && \
    apt-get --yes install \
        wget \
        fonts-dejavu-extra \
        ttf-mscorefonts-installer && \
    rm -rf /var/lib/apt/lists/* && \
    # This fix is taken from here:
    # https://askubuntu.com/questions/1163560/change-mirror-for-ttf-mscorefonts-installer
    awk '/Url/ {sub("downloads[.]sourceforge[.]net/corefonts","cfhcable.dl.sourceforge.net/project/corefonts/the%20fonts/final",$2); system("wget "$2)}' /usr/share/package-data-downloads/ttf-mscorefonts-installer && \
    /usr/lib/msttcorefonts/update-ms-fonts $(pwd)/*.exe

########################################################################################
# Install runtime dependencies and copy the build artifacts from the previous stage.
########################################################################################
FROM $BASE
ARG LILYPOND_VERSION
ARG GUILE_VERSION
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get --yes install \
        guile-$GUILE_VERSION \
        libcairo2 \
        libfontconfig1 \
        libfreetype6 \
        ghostscript \
        libpangoft2-1.0 \
        libltdl7 \
        python3-minimal \
        # Some tools for convenience
        make \
        jq \
        unzip \
        curl \
        ca-certificates \
        fonts-texgyre \
    # Update Fonts
    && apt-get --yes purge --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -rf /var/lib/apt/lists/*

########################################################################################
# Install Lilypond and some perl PDF utils I use for post processing books
########################################################################################
RUN apt-get --yes update && \
    apt-get --yes install \
        "lilypond=${LILYPOND_VERSION}" \
        make \
        libpdf-api2-perl \
        libpdf-api2-xs-perl

# Copy fonts into the final image.
COPY --from=build-fonts /usr/share/fonts /usr/share/fonts
COPY ./fonts/*/supplementary-fonts/*.otf ./fonts/*/supplementary-files/*/*.otf /usr/share/fonts/opentype/
COPY ./fonts/*/supplementary-fonts/*.ttf ./fonts/*/supplementary-files/*/*.ttf /usr/share/fonts/truetype/
COPY ./fonts/*/stylesheet/* "/opt/share/lilypond/$VERSION/ly/"
COPY ./fonts/*/otf ./fonts/*/woff "/opt/share/lilypond/$VERSION/fonts/otf/"
COPY ./fonts/*/svg/* "/opt/share/lilypond/$VERSION/fonts/svg/"

ENV PATH="/opt/bin:$PATH" LD_LIBRARY_PATH="/opt/lib:$LD_LIBRARY_PATH"
