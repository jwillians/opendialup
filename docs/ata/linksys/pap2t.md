# Linksys PAP2T

Este tutorial visa divulgar as configurações a serem utilizadas no ATA LINKSYS PAP2T, para utilização como "ponte" entre os modems clientes e o servidor dialup.
O equipamento deverá estar conectado à rede local, via cabo ethernet, e as configurações serão baseadas um ATA com reset de fábrica, cujos procedimentos serão informados à seguir:

# Reset de Fábrica

Somente pode ser feito via um aparelho telefônico, da seguinte forma:
  - Conectar aparelho telefonico no LINE1;
  - Discar **** ( * 4 vezes), depois 73738# e confirmar com 1;
  - Desligar o telefone para concluir o reset.

# Identificação do novo IP na rede

Pode ser utilizado qualquer IP Scanner disponível gratuitamente online ou efetuar o procedimento à seguir, utilizando um aparelho telefônico:
  - Conectar aparelho telefonico no LINE1;
  - Discar **** ( * 4 vezes), depois 110#. Você irá ouvir o endereço do ATA, em inglês;

# Acessando as configurações

Após identificar o IP, deve-se acessar as configurações do ATA via navegador/browser, digitando o IP informado na barra de endereços e efetuar login:
  -  Informar usuário e senha padrão do equipamento ( admin/admin );
  -  Alterar visualização das configurações para AVANÇADA (Switch to Advanced View);

# Configurando ATA

Acessar aba SYSTEM e alterar:
  - HOSTNAME: um nome qualquer para identificar o ATA na rede;
  - PRIMARY DNS: 		            8.8.8.8 
  - SECONDARY DNS: 		          8.8.4.4
  - PRIMARY NTP SERVER: 	      b.st1.ntp.br
  - SECONDARY NTP SERVER:	      c.st1.ntp.br

Salvar alterações;

Acessar aba SIP e alterar:
  - Remove Last Reg:	          YES

Salvar alterações;

Acessar aba PROVISIONING e alterar:
  - Provisioning Enable: NO

Salvar alterações;

Acessar aba REGIONAL e alterar:
  - Ring Waveform:		TRAPEZOID
  - Ring Frequency:		25
  - Ring Voltage:		70
  - Time Zone:		GMT-03:00

Salvar alterações;

Acessar aba LINE1 e alterar:
  - NAT Keep Alive Enable:		YES
  - Network Jitter Level:		LOW
  - Jitter Buffer Adjustment:	DISABLE
  - Xfer When Hangup Conf:		NO
  - Proxy:				voip.opendialup.com
  - Use OB Proxy In Dialog:		NO
  - Make Call Without Reg:		YES
  - Ans Call Without Reg:		YES
  - Use DNS SRV:			YES
  - Display Name:			OpenDialUp
  - User ID:			numero fornecido pelo admin do servidor
  - Password:			senha fornecida pelo admin do servidor
  - Use Auth ID:			YES
  - Auth ID:			mesmo numero do User ID
  - Call Waiting Serv:		NO
  - Three Way Call Serv:		NO
  - Preferred Codec:		G711u
  - Use Pref Codec Only:		YES
  - Silence Threshold:		HIGH
  - Echo Canc Enable:		NO
  - Echo Canc Adapt Enable:		NO
  - Echo Supp Enable:		NO
  - FAX CED Detect Enable:		NO
  - FAX CNG Detect Enable:		NO
  - FAX Codec Symmetric:		NO
  - FAX Passthru Method:		NONE
  - G729a Enable:			NO
  - G723 Enable:			NO
  - G726-16 Enable:		NO
  - G726-24 Enable:		NO
  - G726-32 Enable:		NO
  - G726-40 Enable:		NO
  - FAX Process NSE:	NO

Salvar alterações;

Caso for utilizar as duas linhas do ATA, deve-se repetir as configurações da aba LINE1 para a aba LINE2, alterando o User ID e Password.


