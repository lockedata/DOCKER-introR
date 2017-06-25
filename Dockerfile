FROM rocker/tidyverse
MAINTAINER Steph Locke <steph@itsalocke.com>
ADD https://gist.githubusercontent.com/stephlocke/0036331e7a3338e965149833e92c1360/raw/b87a9442f927623e3c4ae7f1916b4e96b610ddfa/mkusers.sh /
ADD https://gist.githubusercontent.com/stephlocke/0036331e7a3338e965149833e92c1360/raw/6d967c19d9c73cecd1e2d4da0eed2cd646790bd5/users.csv /
RUN apt-get install whois && chmod 777 /mkusers.sh && /mkusers.sh
RUN  R -e 'devtools::install_github("lockedata/DOCKER-introR")' 
