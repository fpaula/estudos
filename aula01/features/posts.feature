# language: pt

Funcionalidade: CRUD de Posts
  Como autor
  Eu quero crudar posts
  Para ter um blog legal

  #@javascript (isso chama TAG)
  Cenário: Criar post
    Dado que eu estou na pagina de novo post
    Quando eu preencho o "título" com "Meu primeiro post"
    E eu preencho o "texto" com "Esse post é legal." 
    E eu preencho o "slug" com "primeiro-post"
    E eu clico no botão "salvar"
    Então o post deve ser salvo
    E eu devo ver a mensagem Post salvo com sucesso com o id 
    
  Cenário: Validar slug única
    Dado que eu tenho um post com slug fred
    E que eu estou na página de novo post
    Quando eu preencho o "título" com "Meu segundo post"
    E eu preencho o "texto" com "Esse post é legal." 
    E eu preencho o "slug" com "fred"
    E eu clico no botão "salvar"
    Então eu devo ver a mensagem Slug duplicado