wget -O ng.sh https://github.com/FarizGaming331/Windows10-Ubuntu-Bionic-Docker/raw/main/ngrok.sh > /dev/null 2>&1
chmod +x ng.sh
./ng.sh


function goto
{
    label=$1
    cd 
    cmd=$(sed -n "/^:[[:blank:]][[:blank:]]*${label}/{:a;n;p;ba};" $0 | 
          grep -v ':$')
    eval "$cmd"
    exit
}

: ngrok
clear
echo "Go to: https://dashboard.ngrok.com/get-started/your-authtoken"
read -p "Paste Ngrok Authtoken: " CRP
./ngrok authtoken $CRP 

clear
echo "OG Repo: https://github.com/kmille36/Docker-Ubuntu-Desktop-NoMachine"
echo "Modified Repo: https://github.com/FarizGaming331/windows10-ubuntu-bionic-docker"
echo "======================="
echo "Choose ngrok region (for better connection)."
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
if $CRP = "us" then echo "CAN'T EVEN USE DOCKER IN OHIO"; echo "0010101001010101010100101010010010001001010001010010010011010010101010101010100101010100101010"
./ngrok tcp --region $CRP 4000 &>/dev/null &
sleep 1
if curl --silent --show-error http://127.0.0.1:4040/api/tunnels  > /dev/null 2>&1; then echo OK; else echo "Ngrok Error! Please try again!" && sleep 1 && goto ngrok; fi
docker run --rm -d --network host --privileged --name nomachine-xfce4 -e PASSWORD=123456 -e USER=user --cap-add=SYS_PTRACE --shm-size=16g thuonghai2711/nomachine-ubuntu-desktop:windows10
clear
echo "NoMachine: https://www.nomachine.com/download"
echo Done! NoMachine Information:
echo IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p' 
echo User: user
echo Passwd: 123456
echo "VM can't connect? Restart Cloud Shell then Re-run script."
seq 1 999999999 | while read i; do echo -en "\r Running .     $i s /999999999 s";sleep 0.1;echo -en "\r Running ..    $i s /999999999 s";sleep 0.1;echo -en "\r Running ...   $i s /999999999 s";sleep 0.1;echo -en "\r Running ....  $i s /999999999 s";sleep 0.1;echo -en "\r Running ..... $i s /999999999 s";sleep 0.1;echo -en "\r Running     . $i s /999999999 s";sleep 0.1;echo -en "\r Running  .... $i s /999999999 s";sleep 0.1;echo -en "\r Running   ... $i s /999999999 s";sleep 0.1;echo -en "\r Running    .. $i s /999999999 s";sleep 0.1;echo -en "\r Running     . $i s /999999999 s";sleep 0.1; 