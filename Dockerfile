FROM alpine:latest
RUN apk update && apk add wget ca-certificates && \
 cd /sbin && wget https://s3.amazonaws.com/ml-sreracha/sreracha
RUN apk add redis
RUN adduser -S -H -s /bin/sh -h /home/www www
RUN chown www /sbin/sreracha
RUN chmod +x /sbin/sreracha
ENV REDIS_URL redis://localhost
COPY script.sh /sbin/
RUN chown www /sbin/script.sh
RUN chmod +x /sbin/script.sh
EXPOSE 80
ENTRYPOINT /sbin/script.sh
