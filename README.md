# Devcontainers Playground

Multiple devcontainers with a docker-compose-file

## Start

`docker compose up -d`

## Containers

- db:  SQL Server 2019 (see restore.sql)

### TODO

- api1: .NET WebApi with no Dockerfile
- api2: .NET WebApi with own devcontainer/Dockerfile
- db-container with devcontainer with VS Code Sql Server extension
- api2-container with dotnet watch as command
- db-container auto init https://www.softwaredeveloper.blog/initialize-mssql-in-docker-container