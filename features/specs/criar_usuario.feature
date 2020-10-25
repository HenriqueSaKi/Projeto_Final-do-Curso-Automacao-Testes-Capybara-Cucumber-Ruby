#language: pt

@cadastro
Funcionalidade: Criar usuário.

-Eu como usuário
-Quero me cadastrar com sucesso

Cenário: Cadastrar com sucesso.
Quando eu cadastro meu usuário
Então eu verifico se o usuário foi cadastrado.