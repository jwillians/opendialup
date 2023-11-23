## Pré-requisitos

- Ubuntu Linux Server Ubuntu Server 22.04.3.
- ATA LinkSys PAP2T.

### Instalação do Asterisk

- Comando para instalar o Asterisk:

```shell
sudo apt-get install asterisk
```

- Comando para o serviço do Asterisk iniciar com o sistema:
```shell
sudo systemctl enable asterisk
```

- Comando para iniciar o Asterisk:
```shell
sudo systemctl start asterisk
```

- Comando para checar se o serviço do Asterisk esta ok:
```shell
sudo systemctl status asterisk
```

## Editar o arquivo modules.conf:

- Entrar na pasta do Asterisk
```shell
cd /etc/asterisk
```
- Fazer backup do arquivo original
```shell
sudo mv modules.conf modules.confORIGINAL
```
- Abrir o editor com o arquivo modules.conf
```shell
sudo nano modules.conf
```
- Configuração do arquivo modules.conf
```shell
[modules]
autoload=yes

noload => pbx_gtkconsole.so
noload => pbx_kdeconsole.so
noload => app_intercom.so
noload => chan_modem.so
noload => chan_modem_aopen.so
noload => chan_modem_bestdata.so
noload => chan_modem_i4l.so
noload => chan_capi.so
load => res_musiconhold.so
noload => chan_alsa.so
noload => chan_console.so
noload => chan_oss.so
noload => cdr_sqlite.so
noload => res_config_odbc.so
noload => res_config_pgsql.so

[global]
noload => chan_sip.so
```

## Editar o arquivo pjsip.conf:

- Fazer backup do arquivo original
```shell
sudo mv /etc/asterisk/pjsip.conf /etc/asterisk/pjsip.confORIGINAL/
```

- Abrir o editor com o arquivo pjsip.conf
```shell
sudo nano pjsip.conf
```
- Configuração do arquivo pjsip.conf
```shell
[global]
user_agent=callphone
keep_alive_interval=90

[acl]
type=acl
permit=0.0.0.0/0.0.0.0

[transport-udp-nat]
type=transport
protocol=udp
bind=192.168.0.130:5060

; Usuarios

[2345677]
type=auth
auth_type=userpass
password=12345678
username=2345677
[2345677]
type=aor
max_contacts=1
[2345677]
type=endpoint
transport=transport-udp-nat
context=from-internal
disallow=all
allow=ulaw
auth=2345677
aors=2345677
direct_media=yes
rtp_symmetric=yes
rewrite_contact=yes

[2345678]
type=auth
auth_type=userpass
password=12345678
username=2345678
[2345678]
type=aor
max_contacts=1
[2345678]
type=endpoint
transport=transport-udp-nat
context=from-internal
disallow=all
allow=ulaw
auth=2345678
aors=2345678
direct_media=yes
rtp_symmetric=yes
rewrite_contact=yes
```
## Editar o arquivo extensions.conf:

- Fazer backup do arquivo original
```shell
sudo mv /etc/asterisk/extensions.conf /etc/asterisk/extensions.confORIGINAL
```

- Abrir o editor com o arquivo extensions.conf
```shell
sudo nano extensions.conf
```
- Configuração do arquivo extensions.conf
```shell
[globals]
DIAL_OPTIONS = HhTtr
MIXMON_FORMAT = ulaw
TRANSFER_CONTEXT = from-internal
NULL = ""
ENUMUSEGOOGLEDNS = TRUE
SIPLANG = en
ALLOW_SIP_ANON = yes

;end of [globals]

[from-internal]

exten => 2345677,1,Dial(PJSIP/2345677,30,rtT)
exten => 2345677,2,Hangup()

exten => 2345678,1,Dial(PJSIP/2345678,30,rtT)
exten => 2345678,2,Hangup()

;--== end of [from-internal] ==--;
```
## Editar o arquivo rtp.conf:

- Fazer backup do arquivo original
```shell
sudo mv /etc/asterisk/rtp.conf /etc/asterisk/rtp.confORIGINAL
```

- Abrir o editor com o arquivo rtp.conf
```shell
sudo nano /etc/asterisk/rtp.conf
```
- Configuração do arquivo rtp.conf
```shell
rtpstart=10000
rtpend=20000
strictrtp=no
```

## Iniciar o servidor:  

```shell
sudo asterisk -rvvv
```
## Reiniciar o servidor:

```shell
core restart now
```
### Instalação do Servidor RAS:

- Criar um alias para listar as seriais disponíveis no computador:
- Esse comando entra na pasta do usuário e edita o arquivo .bashrc
```shell
cd ~
nano ~/.bashrc
```
- Inserir no final do arquivo .bashrc
```shell
alias listarserial="ls -l /sys/class/tty/*/device/driver | grep -v \"platform/drivers/serial8250\" | awk '{print \$9}' | awk -F'/' '{print \"/dev/\" \$5}'
```
- Recarregar o arquivo .bashrc
```shell
source ~/.bashrc
```

- Comando para listar seriais: 
```shell
listarserial
```

## Instalação do ppp e mgetty:

```shell
sudo apt-get install ppp mgetty
```
## Configuração do arquivo mgetty.service

- Criar / Editar o arquivo mgetty.service
```shell
sudo nano /lib/systemd/system/mgetty.service
```
- - Configuração do arquivo mgetty.service
```shell
[Unit]
Description=Modem USB         
Documentation=man:mgetty(8)
Requires=systemd-udev-settle.service
After=systemd-udev-settle.service

[Service]
Type=simple
ExecStart=/sbin/mgetty -x 0 /dev/ttyACM0
Restart=always
PIDFile=/var/run/mgetty.pid.ttyACM0

[Install]
WantedBy=multi-user.target
```
## Editar o arquivo mgetty.config:

- Fazer backup do arquivo original
```shell
sudo mv /etc/mgetty/mgetty.config /etc/mgetty/mgetty.configORIGINAL
```

- Abrir o editor com o arquivo mgetty.config
```shell
sudo nano /etc/asterisk/mgetty.config
```
- Configuração do arquivo mgetty.config
```shell
debug 9

port ttyACM0
 port-owner root
 port-group dialout
 port-mode 0660
 data-only yes
 ignore-carrier no
 toggle-dtr yes
 toggle-dtr-waittime 500
 rings 1
 speed 115200
 modem-check-time 60
```

## Iniciar o serviço mgetty com o sistema e checagem:

- Comando para o serviço do Asterisk iniciar com o sistema:
```shell
sudo systemctl enable mgetty.service
```

- Comando para iniciar o Asterisk:
```shell
sudo systemctl start mgetty.service
```

- Comando para checar se o serviço do mgetty.service esta ok:
```shell
sudo systemctl status mgetty.service
```

## Editar o arquivo /etc/ppp/options:

- Fazer backup do arquivo original
```shell
sudo mv /etc/ppp/options /etc/ppp/options.ORIGINAL
```

- Abrir o editor com o arquivo options
```shell
sudo nano /etc/ppp/options
```

- Configuração do arquivo options
```shell
ms-dns 8.8.8.8
asyncmap 0
auth
crtscts
lock
show-password
+pap
debug
lcp-echo-interval 30
lcp-echo-failure 4
proxyarp
noipx
```

## Configuração do arquivo options.ttyACM0

- Criar / Editar o arquivo options.ttyACM0
```shell
sudo nano /etc/ppp/options.ttyACM0
```
- Configuração do arquivo options.ttyACM0
```shell
debug 9

local
lock
nocrtscts
192.168.0.114:192.168.0.44
netmask 255.255.255.0
noauth
proxyarp
lcp-echo-failure 60
```

## Criar usuário no grupo correto e definir sua senha:

```shell
sudo useradd -G dialout,dip,users -m -g users -s /usr/sbin/pppd opendialup
sudo passwd opendialup
```

- Fazer backup do arquivo original
```shell
sudo mv /etc/ppp/pap-secrets /etc/ppp/pap-secrets.ORIGINAL
```

- Abrir o editor com o arquivo pap-secrets
```shell
sudo nano /etc/ppp/pap-secrets
```
- Configuração do arquivo pap-secrets
```shell
#       *       password
opendialup * "opendialup" *
```
## Configuração do arquivo /etc/sysctl.conf: 

- Abrir o editor com o arquivo sysctl.conf
```shell
sudo nano /etc/sysctl.conf
```

- Descomentar / retirar o "#" do comando abaixo:
```shell
net.ipv4.ip_forward=1
```

- Atualizar o arquivo sysctl.conf:
```shell
sudo sysctl -p /etc/sysctl.conf
```

## Mudar o iptables para legacy: 

- Selecionar o iptables legacy
```shell
sudo update-alternatives --config iptables
```

## Configurar o rc.local: 

- Abrir o editor com o arquivo rc.local
```shell
sudo nano /etc/rc.local
```
- Configuração do arquivo rc.local
```shell
iptables -t nat -A POSTROUTING -s 192.168.0.0/24 -o ens18 -j MASQUERADE
```

## Reiniciar servidor:

```shell
sudo reboot
```

