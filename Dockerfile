FROM erlang:21.1
LABEL maintainer="wuxingzhong <wuxingzhong@sunniwell.net>"

RUN set -x  \
	&& cd /opt/ \
	&& git clone https://github.com/emqtt/emqtt_benchmark.git \
	&& cd emqtt_benchmark \
	&& make

WORKDIR /opt/emqtt_benchmark