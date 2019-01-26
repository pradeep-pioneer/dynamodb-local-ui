FROM openjdk as base
WORKDIR /var/dynamodb_local_latest

RUN wget -O /tmp/dynamodb_local https://s3.ap-south-1.amazonaws.com/dynamodb-local-mumbai/dynamodb_local_latest.tar.gz && \
    tar xfz /tmp/dynamodb_local && rm -f /tmp/dynamodb_local

#nodejs and supervisor
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs supervisor && \
    apt-get clean && \
    npm install dynamodb-admin -g #dynamodb-admin

VOLUME ["/var/dynamodb_local","/var/dynamodb_data"]
EXPOSE 8000 8001

COPY supervisord.conf /etc/supervisord.conf
RUN mkdir -p /var/log/supervisord

ENV DYNAMO_ENDPOINT http://0.0.0.0:8000/
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]