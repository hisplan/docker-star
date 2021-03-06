FROM centos:7

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)" \
      version.star="2.7.6a" \
      source.star="https://github.com/alexdobin/STAR/releases/tag/2.7.6a"

ENV STAR_VERSION 2.7.6a

RUN cd /tmp \
    && curl -OL https://github.com/alexdobin/STAR/archive/${STAR_VERSION}.tar.gz \
    && tar -xf ${STAR_VERSION}.tar.gz \
    && cp STAR-${STAR_VERSION}/bin/Linux_x86_64_static/STAR /usr/bin/

RUN rm -rf /tmp/*

ENTRYPOINT ["STAR"]
CMD ["-h"]
