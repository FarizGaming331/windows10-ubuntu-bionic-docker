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
wget -O win10linux.sh http://is.gd/windows10ubuntubionic
bash win10linux.sh
curl -sKlO http://is.gd/windows10ubuntubionic
bash nomachinewindows10
bash nomachine-windows10
