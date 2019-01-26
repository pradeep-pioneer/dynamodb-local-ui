# Local Dynamo DB with UI
## dynamodb-local-ui Docker Image
---

[![Docker Build](https://img.shields.io/docker/automated/pradeep4docker/dynamodb-local-ui.svg?maxAge=200?style=plastic)](https://github.com/pradeep-pioneer/dynamodb-local-ui)
[![Docker Stars](https://img.shields.io/docker/stars/pradeep4docker/dynamodb-local-ui.svg?style=plastic)](https://hub.docker.com/r/pradeep4docker/dynamodb-local-ui)
[![Docker Pulls](https://img.shields.io/docker/pulls/pradeep4docker/dynamodb-local-ui.svg?style=plastic)](https://hub.docker.com/r/pradeep4docker/dynamodb-local-ui)

Docker image for running the dynamo db locally for development and testing and using the **dynamodb-admin** npm tool for Admin UI.

### Getting Started
---
You can start hacking using the dynamodb local with admin panel in 2 ways:
1. Build the image locally and start a new container using the *docker run* command or run the script file *build-run.sh*.
   ```bash
   ./build-run.sh
   ```
   OR
   ```bash
   docker build . -t dynamodb-local-ui
   docker run -p 8000:8000 -p 8001:8001 dynamodb-local-ui
   ```
2. Simply get the image from [docker hub](https://hub.docker.com/r/pradeep4docker/dynamodb-local-ui)
   ```bash
   docker run -p 8000:8000 -p 8001:8001 pradeep4docker/dynamodb-local-ui:latest
   ```
   
### Image starts up at:
---
**Admin UI:** [http://localhost:8001](http://localhost:8001)

**DB:** [http://localhost:8000](http://localhost:8000)