# Based on Microsoft's docker samples for dotnet core
# available at https://github.com/dotnet/dotnet-docker/tree/master/samples/aspnetapp
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
# First install nodejs - required to build generated client app
WORKDIR /app
RUN apt-get update -yq && apt-get install -yq curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get update && \
    apt-get install -yq nodejs && \
    rm -rf /var/lib/apt/lists/*
