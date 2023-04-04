FROM mcr.microsoft.com/dotnet/sdk:7.0 AS builder 
WORKDIR /app

COPY *.csproj ./
RUN dotnet restore *.csproj

COPY . ./
RUN dotnet publish -o build  -c Release *.csproj

FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=builder /app/build .
EXPOSE 80
CMD ["dotnet", "DotNet.Docker.dll"]

