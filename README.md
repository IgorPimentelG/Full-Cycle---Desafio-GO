# Full Cycle 3.0 - Desafio GO
[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)](https://hub.docker.com/r/igorgusmao/desafio-go/tags)

## Resultados
👉 https://hub.docker.com/r/igorgusmao/desafio-go 👈

Para solucionar o problema da imagem ter menos de 2MB, utilizei o processo de multi-stage builds. No primeiro estágio, foi utilizada a imagem golang:1.22-alpine para realizar o build do arquivo main.go e gerar o arquivo binário, utilizando alguns flags para otimizar a geração do binário. No segundo estágio, foi utilizada a imagem scratch para copiar o arquivo binário gerado no estágio anterior e executá-lo.

## Descrição

Esse desafio é muito empolgante principalmente se você nunca trabalhou com a linguagem Go!
Você terá que publicar uma imagem no docker hub. Quando executarmos:

```sh
docker run <seu-user>/desafio-go
```

Temos que ter o seguinte resultado: Full Cycle Rocks!!

Se você perceber, essa imagem apenas realiza um print da mensagem como resultado final, logo, vale a pena dar uma conferida no próprio site da Go Lang para aprender como fazer um "olá mundo". Lembrando que a Go Lang possui imagens oficiais prontas, vale a pena consultar o Docker Hub.

A imagem de nosso projeto Go precisa ter menos de 2MB =)

Dica: No vídeo de introdução sobre o Docker quando falamos sobre o sistema de arquivos em camadas, apresento uma imagem "raiz", talvez seja uma boa utilizá-la.

Suba o projeto em um repositório Git remoto e coloque o link da imagem que subiu no Docker Hub. Compartilhe o link do repositório do Git remoto para corrigirmos seu projeto.

Divirta-se!

## Execução

Requer o [docker](https://www.docker.com/) instalado no máquina local. 

Para executa via clone do projeto, siga as etapas:
Gerar build da imagem

```sh
docker build -t <user-name>/desafio-go .
```

Executar o container

```sh
docker run <user-name>/desafio-go
```

Para executar via do docker hub, execute via terminal:

```sh
docker run igorgusmao/desafio-go
```
