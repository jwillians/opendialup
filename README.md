# OpenDialUP

Bem-vindo ao projeto OpenDialUP, uma iniciativa que visa resgatar a experiência da Internet Discada por meio da tecnologia VoIP. Este projeto é liderado por Jorge Willians, um entusiasta de eletrônica e informática no Brasil.

## Visão Geral

OpenDialUP tem como objetivo reviver a nostalgia da Internet Discada, adaptando-a para a era moderna com a tecnologia VoIP. Se você é um amante da tecnologia ou simplesmente deseja explorar a história da internet, este projeto é para você.

## Objetivos do Projeto

Os principais objetivos do projeto "OpenDialUP" incluem:

- **Código Aberto**: O projeto é totalmente de código aberto, o que significa que qualquer pessoa é bem-vinda para usar, modificar e contribuir para ele. Acreditamos na colaboração e na disponibilidade para a comunidade.

- **Acesso Universal**: Queremos garantir que a nostalgia e a funcionalidade da Internet Discada estejam ao alcance de todos. Nossa missão é tornar o OpenDialUP uma solução acessível e inclusiva.

- **Preservação da História**: Este projeto visa preservar a história da Internet Discada, permitindo que as gerações atuais e futuras experimentem e aprendam com essa tecnologia.

- **Conexão Direta e Simplificada**: O projeto "OpenDialUP" tem como objetivo oferecer uma solução de conexão direta e simplificada à Internet Discada, sem a necessidade de uma "ponte" intermediária como o Raspberry Pi. Isso envolve a possibilidade de conexão direta a partir de uma ONT do próprio provedor de internet ou usando um ATA PAP2T da Linksys, tornando a experiência de Internet Discada mais acessível e conveniente, para diversos dispositivos antigos que usam modems, como computadores e videogames.

## Estrutrura atual:

O projeto "OpenDialUP" conta hoje com uma estrutura simples que consiste em:

- **1 Servidor VoiP rodando Ubuntu Server 23.10 com Asterisk 20.4.0 + FreePBX 16.0.40.4**
O Objetivo desse servidor é ser como uma "central telefônica", ele que é responsável por receber as chamadas dos clientes e redirecionar para o modem correto.

- **1 Servidor RAS rodando Windows Server 2003 com 2 Modems**
O Objetivo desse servidor é receber a conexão proveniente do servidor Voip e fornecer internet para o cliente através de um dos modems disponíveis atualmente.

- **ATA Linksys PAP2t**
Para fazer a ponte entre os modems e o servidor VoIP é usado um clássico ATA da Linksys PAP2T.

## Como se conectar?

Para facilitar o teste e a experiência com o projeto OpenDialUP, disponibilizei o acesso a um servidor VoIP. Para criar uma conta e experimentar, entre em contato no nosso grupo no Discord.

## Planos Futuros

- Desenvolver modems virtuais capazes de substituir modems reais via hardware e assim ter muitas conexões de entrada. E também poder ter um servidor único que faça a função do servidor VoIP e o servidor RAS simultâneamente.

- Desenvolver um ATA de baixo custo para facilitar o acesso de todos.

- Disponibilizar uma imagem usando Docker com o servidor VoIP pronto para uso.
 
## Contribuições

Estamos entusiasmados com contribuições de toda a comunidade. Se deseja contribuir com o projeto "OpenDialUP", siga estas etapas:

1. [Crie um fork](https://docs.github.com/pt/get-started/quickstart/fork-a-repo) do repositório.
2. Clone o seu fork para a sua máquina local.
3. Crie uma nova branch para a sua contribuição.
4. Faça as alterações necessárias e commit.
5. [Envie um pull request](https://docs.github.com/pt/get-started/quickstart/using-forks) para o repositório principal.

Agradecemos antecipadamente por suas contribuições!

## Contato e Discussão

Se você estiver interessado em usar o servidor ou quiser discutir o projeto OpenDialUP, você pode se juntar ao nosso grupo no Discord:

- **Grupo no Discord**: [https://dub.sh/XQtfC5j]

- **Canal no YouTube**: [https://www.youtube.com/jwillians]

# English

# OpenDialUP

Welcome to the OpenDialUP project, a pioneering initiative aimed at reviving the experience of Dial-Up Internet through VoIP technology. This project is led by Jorge Willians, an electronics and computer enthusiast in Brazil.

## Overview

OpenDialUP aims to revive the nostalgia of Dial-Up Internet, adapting it to the modern era with VoIP technology. Whether you're a tech enthusiast or just want to explore the history of the internet, this project is for you.

## Project Goals

The main goals of the "OpenDialUP" project include:

- **Open Source**: The project is entirely open source, which means anyone is welcome to use, modify, and contribute to it. We believe in collaboration and availability to the community.

- **Universal Access**: We aim to ensure that the nostalgia and functionality of Dial-Up Internet are accessible to everyone. Our mission is to make OpenDialUP an affordable and inclusive solution.

- **Preserving History**: This project seeks to preserve the history of Dial-Up Internet, allowing current and future generations to experience and learn from this technology.

## Current Structure

The "OpenDialUP" project currently consists of a simple structure that includes:

- **1 VoIP Server running Ubuntu Server 23.10 with Asterisk 20.4.0 + FreePBX 16.0.40.4**
The purpose of this server is to act as a "telephone exchange." It is responsible for receiving calls from clients and redirecting them to the correct modem.

- **1 RAS Server running Windows Server 2003 with 2 Modems**
The purpose of this server is to receive the connection from the VoIP server and provide internet access to the client through one of the currently available modems.

- **Linksys PAP2t ATA**
To bridge between the modems and the VoIP server, a classic Linksys PAP2T ATA is used.

## How to Connect?

To facilitate testing and experiencing the OpenDialUP project, I have provided access to a VoIP server. To create an account and try it out, please contact us in our Discord group.

## Future Plans

- Develop virtual modems capable of replacing real modems through hardware, enabling multiple incoming connections. This would also allow a single server to perform the functions of the VoIP server and RAS server simultaneously.

- Develop a low-cost ATA to make access more accessible to everyone.

- Provide a ready-to-use Docker image with the VoIP server.

## Contributions

We are excited about contributions from the entire community. If you want to contribute to the "OpenDialUP" project, follow these steps:

1. [Create a fork](https://docs.github.com/get-started/quickstart/fork-a-repo) of the repository.
2. Clone your fork to your local machine.
3. Create a new branch for your contribution.
4. Make the necessary changes and commit.
5. [Submit a pull request](https://docs.github.com/get-started/quickstart/using-forks) to the main repository.

We appreciate your contributions in advance!

## Contact and Discussion

If you are interested in using the server or want to discuss the OpenDialUP project, you can join our Discord group:

- **Discord Group**: [https://dub.sh/XQtfC5j]

- **YouTube Channel**: [https://www.youtube.com/jwillians]




























