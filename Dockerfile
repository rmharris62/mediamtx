ARG BUILD_FROM
FROM $BUILD_FROM
FROM bluenviron/mediamtx:latest-ffmpeg as target

RUN mkdir /config && touch /config/mediamtx.yml
RUN rm /mediamtx.yml && ln -s /config/mediamtx.yml /mediamtx.yml