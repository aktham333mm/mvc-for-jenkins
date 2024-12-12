FROM mcr.microsoft.com/dotnet/aspnet:7.0

WORKDIR /app
COPY  . ./

# Expose port 80
# This is important in order for the Azure App Service to pick up the app

ENV PORT 80
EXPOSE 80

# Start the app
ENTRYPOINT ["dotnet", "dotnetcoresample.dll"]