# Self-Domain Docker Compose

```mermaid
graph LR;
    A("NGINX Reverse Proxy") --> WSGI;
    WSGI --> Flask;
    Flask --> Postgres;
```

This contains all of the resources needed to run a docker compose for the entire server infrastructure of my self-titled domain.

[compose.yaml](compose.yaml) is the core of the project and contains the most interesting info.

I've updated the sample to also include a postgres database which I'll be integrating into the flask app. 

## TODO

I need to implement a health check endpoint in the flask app and tie it into the compose file. The current one (/flask-health-check) returns a 404 or some other non-200 status code since it doesn't exist.

I want to spend some time testing this to make sure the NGINX reverse proxy is actually doing its job. It would be easy for this to work without the NGINX reverse proxy behaving as intended but the application won't scale correctly.
