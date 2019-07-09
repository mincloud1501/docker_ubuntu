FROM ubuntu
MAINTAINER minCloud <mincloud1501@naver.com>
COPY ./start.sh /
RUN chmod 755 /start.sh
RUN /start.sh
CMD bash