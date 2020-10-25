class User < SitePrism::Page
    set_url 'users/new'
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'

    element :criar, 'input[value="Criar"]'

    def preencher_usuario
        nome.set 'Henrique'
        sobrenome.set 'Kisaki'
        email.set 'satoshikisaki@hotmail.com'
        endereco.set 'Rua x'
        universidade.set 'FATEC Santo André'
        profissao.set 'Analista QA'
        idade.set '21'
        criar.click
    end
end