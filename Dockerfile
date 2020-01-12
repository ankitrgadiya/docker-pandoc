FROM alpine:latest
LABEL maintainer="Ankit R Gadiya <me@argp.in>"

ENV version 2.9.1.1
RUN apk --update --no-cache add make tree findutils \
	&& wget https://github.com/jgm/pandoc/releases/download/${version}/pandoc-${version}-linux-amd64.tar.gz \
	&& tar -xvf pandoc-${version}-linux-amd64.tar.gz \
	&& mv pandoc-${version}/bin/pandoc /usr/local/bin \
	&& rm -rf pandoc-${version}*

CMD ["/usr/local/bin/pandoc"]
