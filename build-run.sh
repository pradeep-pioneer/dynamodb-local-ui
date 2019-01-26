docker build . -t pradeep4docker/dynamodb-local-ui:latest
docker run -p 8000:8000 -p 8001:8001 pradeep4docker/dynamodb-local-ui:latest