FROM tvial/docker-mailserver:latest

RUN mkdir /tmp/docker-mailserver
COPY ./entrypoint.sh ./entrypoint.sh
RUN chmod a+x ./entrypoint.sh

CMD ["./entrypoint.sh"]
