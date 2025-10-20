FROM busybox:latest
ENV PORT=8000
LABEL maintainer="Chad Frownfelter <chad.frownfelter@gmail.com>"

ADD index.html /www/index.html

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

HEALTHCHECK CMD nc -z localhost $PORT

CMD ["/entrypoint.sh"]
