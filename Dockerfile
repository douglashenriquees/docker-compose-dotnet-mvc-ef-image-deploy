FROM mcr.microsoft.com/dotnet/sdk:6.0

LABEL version="4.0" description="Aplicacao ASP .NET MVC"

RUN mkdir /app

WORKDIR /app

COPY mvc.csproj .

RUN dotnet restore

COPY . .

RUN dotnet publish -c Release -o dist

EXPOSE 80/tcp

CMD [ "dotnet", "dist/mvc.dll" ]