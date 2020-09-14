FROM  python:3.7.2-alpine3.8

COPY requirements.txt /tmp/requirements.txt

RUN apk --no-cache update && apk add --no-cache --virtual .build-deps \
		build-base gcc bash \
		musl-dev libxml2-dev libxslt-dev	\
		postgresql-dev  \
		libffi-dev 	\
		py-pip jpeg-dev zlib-dev npm \
	&& pip install --upgrade pip  
RUN pip install -r /tmp/requirements.txt

ENV LIBRARY_PATH=/lib:/usr/lib
