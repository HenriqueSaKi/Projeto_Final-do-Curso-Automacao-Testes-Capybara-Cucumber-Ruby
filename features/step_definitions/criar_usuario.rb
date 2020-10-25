Quando('eu cadastro meu usuário') do
    user.load
    user.preencher_usuario
end

Então('eu verifico se o usuário foi cadastrado.') do
    page.has_xpath?("//p[contains(text(), 'Usuário Criado com sucesso')]")
end