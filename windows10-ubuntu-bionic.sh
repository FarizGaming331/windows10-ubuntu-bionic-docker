echo "======================================"
echo  "THIS thing MUST BE RUNNING IN GOOGLE CLOUD"
echo "======================================"
echo "This vm needs nomachine. Go To: https://nomachine.com/download"
echo "if you need to run any WINDOWS program in this VM,"
echo "Type (When you already enter the nomachine vm)"
echo "curl -sKlO  http://is.gd/wine4ubuntubionic"
echo "then,"
echo "bash wineinstall.sh"
echo "In the nomachine."
sleep 10
wget -O nomachine-windows10.sh http://is.gd/windows10ubuntubionic
bash nomachine-windows10.sh
curl -sKlO http://is.gd/windows10ubuntubionic
bash nomachinewindows10.sh
bash nomachine-windows10.sh
