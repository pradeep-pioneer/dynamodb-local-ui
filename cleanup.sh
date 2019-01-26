docker rm $(docker ps -aq -f "ancestor=pradeep4docker/dynamodb-local-ui")
docker rmi $(docker images pradeep4docker/dynamodb-local-ui -q)