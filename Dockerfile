FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app
COPY  ./mvc-app/bin/Release/net8.0/publish/ ./

# Expose port 80
# This is important in order for the Azure App Service to pick up the app

ENV PORT 80
EXPOSE 80

# Start the app
ENTRYPOINT ["dotnet", "mvc-app.dll"]