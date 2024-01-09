# OpenDialUP

[Português](#versão-em-português) | [English](#english-version)

## Versão em Português

### Visão Geral
Bem-vindo ao projeto OpenDialUP, uma iniciativa que visa resgatar a experiência da Internet Discada por meio da tecnologia VoIP. Se você é um amante da tecnologia ou simplesmente deseja explorar a história da internet, este projeto é para você. Este projeto é liderado por Jorge Willians, um entusiasta de eletrônica e informática no Brasil.

### Objetivos do Projeto

Os principais objetivos do projeto "OpenDialUP" incluem:

- **Provedor de Internet Comunitário**: Servir como um provedor de internet discada comunitário, permitindo que qualquer pessoa possa compartilhar sua conexão de internet e oferecer acesso gratuito a dispositivos antigos.

- **Preservação da História**: Preservar a história da Internet Discada, permitindo que as gerações atuais e futuras experimentem e aprendam com essa tecnologia.

- **Código Aberto e Acesso Universal**: O OpenDialUP é um projeto de código aberto, convidando todos a usar, modificar e contribuir. Estamos comprometidos com a colaboração e disponibilidade para a comunidade, garantindo que a nostalgia e funcionalidade da Internet Discada sejam acessíveis a todos.

- **Conexão Direta e Simplificada**: Oferecer uma solução de conexão direta e simplificada à Internet Discada, facilitando o acesso para diversos dispositivos antigos que usam modems.

### Estrutura Atual

#### Servidor VoIP
- **Sistema Operacional**: Ubuntu Server 22.04.3
- **Software**: Asterisk 18.10.0
- **Descrição**: Este servidor atua como uma "central telefônica," responsável por receber chamadas dos clientes e direcioná-las para o modem correto.

#### Servidor Proxy
- **Sistema Operacional**: Ubuntu Server 22.04.3
- **Software**: WebOne
- **Descrição**: Este servidor funciona como uma ponte entre a internet atual e softwares antigos, como navegadores incompatíveis com protocolos modernos. O WebOne ajuda a minimizar erros. Link do projeto WebOne: [WebOne GitHub](https://github.com/atauenis/webone)

#### Servidor RAS
- **Sistema Operacional**: Ubuntu Server 22.04.3
- **Modems**: Trendnet TFM-561U
- **Descrição**: Este servidor recebe a conexão do servidor VoIP e fornece internet aos clientes através dos modems disponíveis.

#### ATA Linksys PAP2T
- **Descrição**: Um clássico ATA da Linksys PAP2T é utilizado para fazer a ponte entre os modems e o servidor VoIP.

#### Números de Entrada
- DDD (31) 2012-0564

### Recursos Educacionais e DIY (Faça Você Mesmo)

Além de servir como um provedor de Internet Discada comunitário, o OpenDialUP também atua como uma base de dados e recurso educacional. Para aqueles interessados em configurar sua própria conexão de Internet Discada de forma local, oferecemos vários recursos:

- **Vídeos Tutoriais**: No [canal do YouTube](https://www.youtube.com/jwillians), você encontrará vídeos detalhados ensinando como configurar e gerenciar seu próprio servidor VoIP para Internet Discada.

- **Arquivos de Configuração**: Disponibilizamos arquivos de configuração e guias práticos para que qualquer pessoa possa replicar a configuração em seu próprio ambiente local.

Esses recursos são destinados a educar e capacitar entusiastas e profissionais que desejam explorar a tecnologia de Internet Discada e implementar soluções por conta própria.

### Como se conectar?

Para testar e experimentar o projeto OpenDialUP, acesse nosso servidor VoIP. Para criar uma conta e experimentar, entre em contato no nosso grupo no [Discord](https://dub.sh/XQtfC5j).

### Planos Futuros

- Desenvolver modems virtuais capazes de substituir modems reais via hardware e assim ter muitas conexões de entrada. E também poder ter um servidor único que faça a função do servidor VoIP e o servidor RAS simultâneamente.
- Desenvolver um ATA de baixo custo para facilitar o acesso.

### Contribuições

Contribuições são bem-vindas! Para colaborar com o projeto no GitHub, siga estas etapas ou junte-se ao nosso grupo no Discord.

### Quem está Contribuindo?

- **Renâ Augusto [@RenaAPMartins](https://github.com/RenaAPMartins)**: Contribuições com testes e na organização do servidor do Discord.
- **Tayro Borges**: Contribuições com um número de telefone VoIP e testes com ATA GrandStream HT813.
- **Rodrigo Cambrussi [@rcambrussi](https://github.com/rcambrussi)**: Contribuições com testes diretos com linhas convencionais e outros.
- **Caio Fernando [@Marmelucos](https://github.com/Marmelucos)**: Contribuições com testes do ATA PAP2T e fornecimento do domínio opendialup.com.

Agradecemos a todos os membros da comunidade por suas contribuições!

### Contato e Discussão

Para usar o servidor ou discutir o projeto OpenDialUP, junte-se ao nosso grupo no Discord e acompanhe nosso canal no YouTube.

- **Grupo no Discord**: [https://dub.sh/XQtfC5j]
- **Canal no YouTube**: [https://www.youtube.com/jwillians]

## English Version

### Overview
Welcome to the OpenDialUP project, an initiative aimed at reviving the Dial-Up Internet experience through VoIP technology. If you are a technology enthusiast or simply wish to explore the history of the internet, this project is for you. The project is led by Jorge Willians, an electronics and computing enthusiast in Brazil.

### Project Goals

The main goals of the "OpenDialUP" project include:

- **Community Internet Provider**: Serving as a community dial-up internet provider, allowing anyone to share their internet connection and provide free access to old devices.

- **Preserving History**: Preserving the history of Dial-Up Internet, enabling current and future generations to experience and learn from this technology.

- **Open Source and Universal Access**: OpenDialUP is an open-source project, inviting everyone to use, modify, and contribute. We are committed to collaboration and community availability, ensuring that the nostalgia and functionality of Dial-Up Internet are accessible to all.

- **Direct and Simplified Connection**: Providing a direct and simplified connection solution to Dial-Up Internet, making it easier for various old devices that use modems to access.

### Current Structure

#### VoIP Server
- **Operating System**: Ubuntu Server 22.04.3
- **Software**: Asterisk 18.10.0
- **Description**: This server acts as a "telephone exchange," responsible for receiving calls from clients and directing them to the correct modem.

#### Proxy Server
- **Operating System**: Ubuntu Server 22.04.3
- **Software**: WebOne
- **Description**: This server serves as a bridge between the current internet and old software, like browsers incompatible with modern protocols. WebOne helps to minimize errors. Project WebOne link: [WebOne GitHub](https://github.com/atauenis/webone)

#### RAS Server
- **Operating System**: Ubuntu Server 22.04.3
- **Modems**: Trendnet TFM-561U
- **Description**: This server receives the connection from the VoIP server and provides internet to clients through the available modems.

#### Linksys PAP2T ATA
- **Description**: A classic Linksys PAP2T ATA is used to bridge the modems and the VoIP server.

#### Entry Numbers
- Area Code (31) 2012-0564

### Educational Resources and DIY

In addition to serving as a community Dial-Up Internet provider, OpenDialUP also functions as a database and educational resource. For those interested in setting up their own local Dial-Up Internet connection, we offer various resources:

- **Tutorial Videos**: On our [YouTube channel](https://www.youtube.com/jwillians), you will find detailed videos teaching how to set up and manage your own VoIP server for Dial-Up Internet.

- **Configuration Files**: We provide configuration files and practical guides so that anyone can replicate the setup in their own local environment.

These resources are aimed at educating and empowering enthusiasts and professionals who wish to explore Dial-Up Internet technology and implement solutions on their own.

### How to Connect?

To test and experience the OpenDialUP project, access our VoIP server. To create an account and try it out, please contact us in our Discord group.

### Future Plans

- Develop virtual modems capable of replacing real modems through hardware, thus having many incoming connections. Also, to have a single server that performs the functions of both the VoIP server and RAS server simultaneously.
- Develop a low-cost ATA to facilitate access.

### Contributions

Contributions are welcome! To collaborate with the project on GitHub, follow these steps or join our [Discord group](https://dub.sh/XQtfC5j).

### Contributors

- **Renâ Augusto [@RenaAPMartins](https://github.com/RenaAPMartins)**: Contributions with tests and organizing the Discord server.
- **Tayro Borges**: Contributions with a VoIP phone number and tests with the GrandStream HT813 ATA.
- **Rodrigo Cambrussi [@rcambrussi](https://github.com/rcambrussi)**: Contributions with direct tests with conventional lines and others.
- **Caio Fernando [@Marmelucos](https://github.com/Marmelucos)**: Contributions with ATA PAP2T tests and providing the opendialup.com domain.

We appreciate all community members for their contributions!

### Contact and Discussion

To use the server or discuss the OpenDialUP project, join our Discord group and follow our YouTube channel.

- **Discord Group**: [https://dub.sh/XQtfC5j]
- **YouTube Channel**: [https://www.youtube.com/jwillians]
