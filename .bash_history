clear
sudo apt update
clear
sudo apt install python3 python3-pip -y
pip install flask pyodbc
sudo apt install unixodbc-dev
sudo apt install curl apt-transport-https
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list | sudo tee /etc/apt/sources.list.d/mssql-release.list
sudo apt update
sudo ACCEPT_EULA=Y apt install msodbcsql18 -y
sudo nano /home/azureuser/app/backend.py
pwd
mkdir app
cd app/
sudo nano /home/bvm/app/backend.py
cd ..
ls -ltr
sqlcmd -S sql-server-dmo.database.windows.net -d appdb -U admin -P 'Diwali2025oct'
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list | sudo tee /etc/apt/sources.list.d/mssql-release.list
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install mssql-tools unixodbc-dev -y
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
sqlcmd -S sql-server-dmo.database.windows.net -d appdb -U admin -P 'Diwali2025oct'
az sql server show --name sql-server-dmo --resource-group praveen --query "administratorLogin"
clear
ls
clear
sqlcmd -S sql-server-dmo.database.windows.net -d appdb -U CloudSAeac44edb -P 'Diwali2025oct'
az sql server ad-only-auth disable   --name sql-server-dmo   --resource-group praveen
sqlcmd -S sql-server-dmo.privatelink.database.windows.net -d appdb -U CloudSAeac44edb -P 'Diwali2025oct'
nslookup sql-server-dmo.database.windows.net
sqlcmd -S sql-server-dmo.privatelink.database.windows.net -d appdb -U CloudSAeac44edb -P 'Diwali2025oct'
sqlcmd -S sql-server-dmo.privatelink.database.windows.net -d backenddb -U CloudSAeac44edb -P Diwali2025oct
sqlcmd -S sql-server-dmo.privatelink.database.windows.net -d backenddb -U admin -P Diwali2025oct
nslookup sql-server-dmo.database.windows.net
sqlcmd -S sql-server-dmo.privatelink.database.windows.net -d appdb -U CloudSAeac44edb -P 'Diwali2025oct'
az sql server ad-only-auth get --name sql-server-dmo --resource-group praveen --output table
clear
ls
clear
nc -zv first-sql-server.database.windows.net 1433
ls
cd app/
ls
pwd
sudo vi backend.py 
nohup python3 backend.py &
sudo vi backend.py 
nohup python3 backend.py &
sudo vi backend.py 
nohup python3 backend.py &
netstat -plntu
sudo ss -plntu
sudo lsof -i:5000
sudo kill -9 42986
sudo lsof -i:5000
nohup python3 backend.py &
sudo lsof -i:5000
curl -X POST http://10.0.2.4:5000/users      -H "Content-Type: application/json"      -d '{"name":"CheckUser","email":"check@example.com"}'
ls
cat backend.py 
sudo vi backend.py 
sudo lsof -i:5000
sudo kill -9 43043
sudo lsof -i:5000
nohup python3 backend.py &
sudo lsof -i:5000
curl -X POST http://10.0.2.4:5000/adduser      -H "Content-Type: application/json"      -d '{"name":"CheckUser","email":"check@example.com"}'
curl -X POST http://10.0.2.4:5000/adduser      -H "Content-Type: application/json"      -d '{"name":"praveen","email":"tpk231193@gmail.com"}'

pwd
ls
pip install flask-cors
ls
cd app/
ls
sudo vi backend.py 
sudo lsof -i:5000
sudo kill -9 43082
sudo lsof -i:5000
nohup python3 backend.py &
sudo lsof -i:5000
sudo ufw allow 5000/tcp
sudo lsof -i:5000
clear
ls
ls -ltr
curl -v http://10.0.2.4:5000/addUser
cd app/
ls
cat backend.py 
