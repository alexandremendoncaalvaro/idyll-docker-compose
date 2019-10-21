
FROM node

USER root
RUN echo "America/Sao_Paulo" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata

ENV TZ=America/Sao_Paulo
RUN npm install -g idyll && mkdir /data

EXPOSE 3000

VOLUME /data
WORKDIR /data

CMD ["/bin/bash"]