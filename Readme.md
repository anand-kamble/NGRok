NGRok in docker container.

TO run the project,
`docker compose build && docker compose up`

Once the container is running, connect to it through a different terminal window/tab using

`docker exec -it ngrok-web-1 bash`

Once inside the container, start the NGRok service by

`ngrok http 5000`


Now to start the demo server, we need to start another terminal, and run the following command

`cd docker-trials/ && node test-server.js`

After this, you should be able to access the server port by visiting the url shown on ngrok terminal.
