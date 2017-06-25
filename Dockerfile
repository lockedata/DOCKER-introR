FROM rocker/tidyverse
MAINTAINER Steph Locke <steph@itsalocke.com>
RUN git clone https://github.com/lockedata/DOCKER-introR.git  && \
    cd DOCKER-introR/  && \
    apt-get install -y whois libjpeg-dev libcurl4-openssl-dev gnupg  && \
    chmod 777 ./mkusers.sh  && \
    ./mkusers.sh  && \
    chmod 777 ./odbcinstall.sh  && \
    ./odbcinstall.sh && \
    R -e 'devtools::install_github("lockedata/DOCKER-introR")' 
