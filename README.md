# Devcontainers Playground

Multiple devcontainers with a docker-compose-file

Inspired by [Connect to multiple containers](https://code.visualstudio.com/remote/advancedcontainers/connect-multiple-containers)

## Start

```
# start all containers
docker compose up -d
code .
# F1 => Remote-Containers: Open Folder in Container... select api
dotnet watch
open http://localhost:7056/swagger
```

## Containers

### db

SQL Server 2019 

- see restore.sql
- TODO: db-container auto init https://www.softwaredeveloper.blog/initialize-mssql-in-docker-container

### api

ASP.NET 6 Minimal Web Api

Adapted:

- launchSettings.json: Profile api, removed https, replaced localhost with *
- Program.cs: comment UseHttpsRedirection out