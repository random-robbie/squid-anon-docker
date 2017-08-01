FROM alpine:latest
MAINTAINER txt3rob <txt3rob@gmail.com>
LABEL Description="Docker image for Squid based on the offical Alpine Linux image"

# Install Squid
RUN apk add \
    --no-cache \
    --update \
    squid bash gawk sed grep bc coreutils nano

ADD squid.conf /etc/squid/squid.conf

# Expose port
EXPOSE 3128

# Create swap directories
RUN /usr/sbin/squid -Nz -f /etc/squid/squid.conf



ENTRYPOINT ["/usr/sbin/squid", "-N", "-Y", "-C", "-d", "1", "-f", "/etc/squid/squid.conf"]
