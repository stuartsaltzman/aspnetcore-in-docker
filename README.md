# ASP.NET Core in Docker

Basic web app demonstrating how to containerise an ASP.NET Core app.

Creates a basic app in a docker image by connecting the GitHub repository to Doker Hub

# Run it
```
./docker_build.sh
docker run -p 8080:80 aspnetcore-in-docker:latest
```