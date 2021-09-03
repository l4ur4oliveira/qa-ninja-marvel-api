# Semana da Automação - Marvel API :robot:

Projeto desenvolvido utilizando Robot Framework para testes de API.

## Run

Para executar os testes usar `robot -d logs/ CreateCharacter.robot`

## Endpoints

BaseURL: http://marvel.qaninja.academy

- ### **POST /accounts**

Request Body:
```json
{
  "email": string
}
```

Response Body:
```
{
  "client_key": string
}
```

- ### **POST /characters**

Header: client_key

Request Body:
```json
{
  "name": string,
  "aliases": string,
  "age": number,
  "team": string,
  "active": boolean
}
```
