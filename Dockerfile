FROM alpine:latest
MAINTAINER Ankit R Gadiya <me@argp.in>

ENV version 2.4
RUN apk --update --no-cache add make tree findutils \
	&& wget https://github.com/jgm/pandoc/releases/download/${version}/pandoc-${version}-linux.tar.gz \
	&& tar -xvf pandoc-${version}-linux.tar.gz \
	&& mv pandoc-${version}/bin/pandoc /usr/local/bin \
	&& rm -rf pandoc-${version}*
