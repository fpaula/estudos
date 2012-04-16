# language: pt

Funcionalidade: CRUD de Posts
  Como autor
  Eu quero crudar posts
  Para ter um blog legal

  Cenário: Criar post
    Dado que eu estou na pagina de novo post
    Quando eu preencho o "título" com "Meu primeiro post"
    E eu preencho o "texto" com "Esse post é legal." 
    E eu preencho o "slug" com "meu-primeiro-post"
    E eu clico no botão "salvar"
    Então o post deve ser salvo
    E eu devo ver a mensagem Post salvo com sucesso com o id 

  Cenário: Validar slug única
    Dado que eu tenho um post com slug "meu-segundo-post"
    E que eu estou na página de novo post
    Quando eu preencho o "título" com "Meu segundo post"
    E eu preencho o "texto" com "Esse post é legal." 
    E eu preencho o "slug" com "meu-segundo-post"
    E eu clico no botão "salvar"
    Então eu devo ver a mensagem Slug duplicado

  @javascript
  Cenário: Validar slug única no client
    Dado que eu tenho um post com slug "meu-terceiro-post"
    E que eu estou na página de novo post
    Quando eu preencho o "título" com "Meu terceiro post"
    E eu preencho o "texto" com "Esse post é legal." 
    E eu preencho o "slug" com "meu-terceiro-post"
    E eu preencho o "texto" com "Esse post é legal mesmo!"
    Então eu devo ver a mensagem Slug duplicado

  @javascript
  Cenário: Apagar mensagem de erro de slug
    Dado que eu tenho um post com slug "meu-quarto-post"
    E que eu estou na página de novo post
    Quando eu preencho o "título" com "Meu quarto post"
    E eu preencho o "texto" com "Esse post é legal." 
    E eu preencho o "slug" com "meu-quarto-post"
    E eu preencho o "texto" com "Esse post é legal mesmo!"
    E eu preencho o "slug" com "meu-quarto-post2"
    E eu preencho o "texto" com "Esse post é legal mesmo!!"
    Então eu não devo ver a mensagem "Slug duplicado"