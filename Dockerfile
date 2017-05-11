#Temporary: alpine:3.5 have to old certbot version
FROM alpine:edge

RUN apk add --no-cache python3 certbot=0.14.0-r0 && \
	pip3 install pyyaml raven --upgrade && \
	rm -r /root/.cache && \
	python3 -m ensurepip && \
	mkdir /mnt/storage

ADD startup.sh /root/startup.sh
ADD certbot-runner /root/certbot-runner

VOLUME /etc/letsencrypt
VOLUME /mnt/storage

EXPOSE 80/tcp

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/root/startup.sh"]