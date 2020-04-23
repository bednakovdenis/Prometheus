[! [Version] (https://img.shields.io/badge/MORPHEUS-2.2-brightgreen.svg?maxAge=259200)] ()
[! [Стадия] (https://img.shields.io/badge/Release-STABLE-brightgreen.svg)] ()
[! [Строить] (https://img.shields.io/badge/Supported_OS-Linux-orange.svg)] ()
[! [AUR] (https://img.shields.io/aur/license/yaourt.svg)] ()

# CICADA3301 - автоматизированный инструмент ettercap TCP / IP Bednakov-Xack-Live
! [CICADA3301 v2.2-BETA] (http://i.cubeupload.com/SpNvM5.png)

Релиз версии: v2.2 - СТАБИЛЬНЫЙ
    Автор: Бедняков Денис [CICADA3301]
    Поддерживаемые дистрибутивы: Linux Ubuntu, Kali, Debian, BackBox, Parrot OS
    Suspicious-Shell-Activity © (SSA) RedTeam develop @ 2020

<br />

# ЮРИДИЧЕСКИЙ ОТКАЗ
    Автор не несет никакой ответственности за неправильное использование этого инструмента,
    помните, что нападение на цели без предварительного согласия является незаконным и наказывается по закону.
# Описание структуры
    CICADA3301 - это пакет «Человек в середине», который позволяет пользователям манипулировать
    данные tcp/udp, использующие ettercap, urlsnarf, msgsnarf и tcpkill в качестве внутренних приложений.
    но главная цель этого инструмента - не предоставлять легкий способ использовать / обнюхивать цели,
    но скорее вызов попытки техники манипулирования tcp / udp (фильтры etter)

    CICADA3301 поставляется с некоторыми предварительно настроенными фильтрами, но это позволит пользователям улучшать их
    при запуске атаки (консоль скриптов CICADA3301). В конце атаки CICADA3301
    вернуть фильтр обратно на стадию по умолчанию, это позволит пользователям улучшить фильтры в
    время работы без страха возиться с синтаксисом команды фильтра и испортить фильтр.
    «Идеально подходит для любителей сценариев для безопасного тестирования новых концепций» ...
    СОВЕТ: CICADA3301 позволяет вам улучшить фильтры двумя различными способами
    1º - Редактируйте фильтр перед запуском morpheus, и «изменения» будут постоянными
    2º - Редактируйте фильтр, используя «консоль сценариев CICADA3301», и изменения активны только один раз.


<br />

# Что мы можем сделать, используя фильтры?
    CICADA3301 поставляется с набором фильтров, написанных мной для решения различных задач:
    замена изображений на веб-страницах, замена текста на веб-страницах, загрузка полезных данных на веб-страницах,
    атаки типа «отказ в обслуживании» (удаление, удаление пакетов из источника), перенаправление трафика браузера
    в другой домен и дает вам возможность создать скомпилировать ваш фильтр с нуля
    и запустить его через структуру морфея (вариант W).

    «Фильтры могут быть расширены с использованием языков браузера, таких как: JavaScript, CSS, Flash и т. д.» ...
> В этом примере мы используем тег <head> HTML для вставки URL перенаправления в целевой запрос
! [CICADA3301 v1.6-Alpha] (http://i.cubeupload.com/jn83zh.png)
> В этом примере мы используем CSS3 для запуска поворота веб-страницы на 180º.
! [CICADA3301 v1.6-Alpha] (http://i.cubeupload.com/XSWm0P.png)

<br />

#Рамочные ограничения
    1º - CICADA3301 потерпит неудачу, если целевая система будет защищена
    2º - целевой системе иногда нужно очистить сетевой кэш, чтобы яд арп был эффективным
    3º - многие атаки, описанные у morpheus, могут быть сброшены целевой системой обнаружения HSTS.

> 4º - CICADA3301 нуждается в выполнении ettercap с высшими привилегиями (uid 0 | gid 0). <br />
> правильное отображение конфигурации ettercap (работает от имени администратора без активных ssl-секторов)
! [CICADA3301 v1.6-Alpha] (http://i.cubeupload.com/RIq2yO.png)
    By default CICADA3301 (at startup) will replace the original etter.conf/etter.dns files
    provided by ettercap. On exit morpheus will revert those files to is original state..
    [ ITS IMPORTANTE TO EXIT THE TOOL PROPER TO REVERT THE CHANGES MADE (press 'E' to exit) ]

<br />

# Зависимости
    требуется: ettercap, nmap, zenity, apache2
    подзависимости: driftnet, dsniff (urlsnarf, tcpkill, msgsnarf), sslstrip-0.9, dns2proxy

# Кредиты
    эттеркап (алор и нага) | nmap (федор) | apache2 (Роб МакКул) | dsniff (Dug Song)
    фильтры: irongeek (замените img) | Seannicholls (повернуть на 180º) | TheBlaCkCoDeR09 (ToR-Browser-0day)

<br />

# Скачать / установить
      1º - git clone https://github.com/bednakovdenis/Prometheus.git
      2º - cd Prometheus
      3º - chmod -R +x *.sh
      4º - chmod -R +x *.py
      5º - nano settings
      6º - sudo ./Prometheus.sh

<br /><br /><br />

## Доступно сканирование Nmap [опция S] <br />
! [CICADA3301 v2.2-Alpha] (http://i.cubeupload.com/O2h9Hd.png)

CICADA3301 v2.2 позволяет пользователям сканировать с помощью nmap отправку одного фальшивого User_Agent [iPhone]
      Активируйте эту специальную функцию в файле [settings] в основной папке Prometheus.
      СОВЕТ: Этот параметр доступен только в CICADA3301 [сканирование локальной сети на наличие хостов]

! [CICADA3301 v2.2-Alpha] (http://i.cubeupload.com/hp9r2u.png)

      СОВЕТ: мы можем отредактировать CICADA3301 http.lua lib и ввести другой user_agent, прежде чем запускать инструмент.
      СОВЕТ: Моя измененная библиотека http.lua также позволяет вводить разные user_agent во время выполнения, например:
      nmap -sV --script-args http.useragent = "Apache-HttpClient / 4.0.3 (java 1.5)" Target-Ip

![CICADA3301 v2.2-Alpha](http://i.cubeupload.com/v1aIGd.png)

<br />

## Обнаружение запросов DHCP на доступ к локальной сети [опция 17] <br />
! [CICADA3301 v2.2-Alpha] (http://i.cubeupload.com/EKAYLP.jpg)

<br />

## Обнаружение-блокировка криптовалютных соединений [опция 18] <br />
! [CICADA3301 v2.2-Alpha] (http://i.cubeupload.com/cbAoeY.png)

<br />

## Перенаправить все устройства в локальной сети в Google Prank [вариант 19] <br />
! [CICADA3301 v2.2-Alpha] (http://i.cubeupload.com/ZE4Cy5.png)
! [CICADA3301 v2.2-Alpha] (http://i.cubeupload.com/xxmyex.png)
`СОВЕТ: Этот модуль зависит от того, что домен .im не перенаправлен` <br /><br />

## скриншоты брандмауэра [опция 1] <br />

    предварительно настроенный фильтр firewall [option 1] будет захватывать учетные данные следующих сервисов:
    http, ftp, ssh, telnet (Facebook использует https / ssl :(), сообщает о подозрительных подключениях, сообщает об общем
    веб-социальные сети (facebook, twitter, youtube) сообщают о существовании подключений ботнетов, таких как:
    Mocbot IRC Bot, Darkcomet, перенаправляет трафик браузера и позволяет пользователям блокировать соединения (сбрасывать, убивать)
    «Remmenber: morpheus дает пользователям возможность« добавлять больше правил »в фильтры перед выполнением»

    [CICADA3301] хост: 192.168.1.67 [->] порт: 23 telnet ☆
               Источник IP-адрес потока назначения ранг хороший

    [CICADA3301] хост: 192.168.1.67 [<-] порт: 23 telnet ☠
               Место назначения IP-адрес источника потока ранг подозрительный

![CICADA3301 v2.2-Alpha](http://i.cubeupload.com/nbgSuj.png)

![CICADA3301 v2.2-Alpha](http://i.cubeupload.com/Hx0JV4.png)

![CICADA3301 v2.2-Alpha](http://i.cubeupload.com/LzqZGc.png)

![CICADA3301 v2.2-Alpha](http://i.cubeupload.com/z8M94O.png)

> По сути, фильтр брандмауэра будет действовать как один наступательный и защитный инструмент, анализирующий
> поток данных tcp / udp для сообщения о входах в систему, подозрительном трафике, переборе, блокировке целевого ip и т. д.
<br />

---


_EOF
