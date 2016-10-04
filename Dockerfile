FROM alpine
MAINTAINER Peter

RUN sed -i -e 's/v3\.3/edge/g' /etc/apk/repositories
RUN apk update && apk add \
bash \
curl \
wget \
poppler-utils

COPY plugins /opt/plugins/

COPY dagens_lunch.sh /usr/bin/dagens_lunch.sh

RUN chmod +x /usr/bin/dagens_lunch.sh

CMD /usr/bin/dagens_lunch.sh
