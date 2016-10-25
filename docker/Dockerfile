FROM rocker/rstudio

MAINTAINER "greg.soertsz@gmail.com"

COPY libraries.txt /src/libraries.txt
COPY install-libraries.R /src/install-libraries.R
RUN chmod u+x /src/install-libraries.R 
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
	&& apt-get install -y x11-apps \
 	&& apt-get install -y libxml2-dev \
 	&& apt-get install -y libglpk-dev \
	&& apt-get install -y xorg \
	&& apt-get install -y r-cran-rgl \
	&& apt-get install -y openbox

RUN R -f /src/install-libraries.R --args "/src"

