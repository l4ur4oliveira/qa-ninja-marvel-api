# Semana da Automação - Marvel API :robot:

Projeto desenvolvido utilizando Robot Framework para testes de API.

## Run

Para executar os testes usar `robot -d logs/ specs/`

## Endpoints

BaseURL: http://marvel.qaninja.academy

- ### **POST /accounts**

Request Body:
```json
{
  "email": string
}
```

Response Body (200):
```json
{
  "client_key": string
}
```
- ### **DELETE /delorean**

Request Header: `client_key`

Response Body (200):
```json
{
  "message": "Avengers Assemble"
}
```

- ### **POST /characters**

Request Header: `client_key`

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

Response Body (200):
```json
{
  "_id": string,
  // Request Body
  "owner": client_key
}
```

Response Body (409):
```json
{
  "error": "Character already exists :("
}
```

- ### **GET /characters**

Request Header: `client_key`

Response Body (200):
`Return all characters`

- ### **GET /characters/:id**

Request Header: `client_key`

Response Body (200):
`Return character data`

- ### **DELETE /characters/:id**

Request Header: `client_key`

Response Body (204):
`No content`
