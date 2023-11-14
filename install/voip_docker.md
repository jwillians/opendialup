## Pré requisitos: 

- Linux com Docker e Git instalados.

- ATA LinkSys PAP2T


## Instalação do Asterisk + Freepbx usando o IZPBX: [IZPBX GitHub](https://github.com/ugoviti/izpbx)

cd ~
git clone https://github.com/ugoviti/izpbx.git
cd izpbx/
cp default.env .env
nano .env

# Editar os seguintes itens:

MYSQL_PASSWORD=SenhaForte
MYSQL_ROOT_PASSWORD=SenhaForte
FAIL2BAN_ENABLED=false
FAIL2BAN_ASTERISK_ENABLED=false
America/Sao_Paulo
FAIL2BAN_ENABLED=false

# Iniciar o servidor:  

sudo docker-compose up -d

# Configurações necessárias: 

Esperar uns minutos até o servidor funcionar.


# Asterisk Sip Settings

- NAT Settings / Detect Network Settings

# Codecs:

- Deixar apenas o Codec ulaw


# Executar Bash do IZPBX:

sudo docker exec -it izpbx bash

# Abrir o CLI do Asterisk:

asterisk -rvvv

# Reiniciar o servidor:

core restart now