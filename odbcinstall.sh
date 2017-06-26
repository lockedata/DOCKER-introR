apt-key adv --fetch-keys https://packages.microsoft.com/keys/microsoft.asc
echo "deb [arch=amd64] https://packages.microsoft.com/ubuntu/16.04/prod xenial main" > /etc/apt/sources.list.d/mssql-release.list
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install -y msodbcsql
# optional: for unixODBC development headers
sudo apt-get install -y unixodbc-dev
