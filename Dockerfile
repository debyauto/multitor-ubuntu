FROM ubuntu:bionic

# Default value
ARG PORT
ARG RENEW

#  Assign from ENV
ENV PORT "$PORT"
ENV RENEW "$RENEW"

# Install packages
RUN \
  apt-get update && \
  apt-get dist-upgrade -y && \
  apt-get install -y --no-install-recommends nano tor tor-geoipdb torsocks && \
  apt-get clean

# Configure TOR
RUN echo "SocksPort 0.0.0.0:${PORT} \n"\
"MaxCircuitDirtiness ${RENEW}" > /etc/tor/torrc

# Expose port
EXPOSE ${PORT}