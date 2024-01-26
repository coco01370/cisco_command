FROM debian:bullseye

RUN echo "deb http://deb.debian.org/debian bullseye main" >> /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian bullseye main" >> /etc/apt/sources.list

RUN echo "deb http://deb.debian.org/debian-security/ bullseye-security main" >> /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian-security/ bullseye-security main" >> /etc/apt/sources.list

RUN echo "deb http://deb.debian.org/debian bullseye-updates main" >> /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian bullseye-updates main"  >> /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nano python3 python3-pip -y

RUN pip install mkdocs
RUN pip install mkdocs-material

RUN mkdir /documentation

WORKDIR /documentation

ENTRYPOINT ["mkdocs"]

CMD ["serve", "--dev-addr=0.0.0.0:8000"]