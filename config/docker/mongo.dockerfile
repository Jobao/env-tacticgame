FROM mongo:5
WORKDIR /data
RUN chown 1000:1000
WORKDIR /data/mongo
RUN chown 1000:1000