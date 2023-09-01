FROM alpine as builder

RUN mkdir /config && touch /config/mediamtx.yml
RUN ln -s /config/mediamtx.yml /mediamtx.yml

FROM bluenviron/mediamtx as target
COPY --from=builder /mediamtx.yml /mediamtx.yml

LABEL \
  io.hass.version="9.0" \
  io.hass.type="addon" \
  io.hass.arch="armhf|aarch64|i386|amd64"