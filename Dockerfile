FROM debian:stable
COPY build.sh /build_scripts/
ARG DEBIAN_MIRROR
ENV DEBIAN_MIRROR=$DEBIAN_MIRROR
RUN bash /build_scripts/build.sh && rm -r /build_scripts
CMD ["/bin/bash"]

