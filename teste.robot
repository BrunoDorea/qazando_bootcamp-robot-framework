** Settings **
Library  SeleniumLibrary

** Variables **


** Keywords **
Acessar site da qazando
    Open Browser  https://automationpratice.com.br/login  chrome

Aguardar site carregar
    Sleep  2s

Digitar Email
    Input Text  id:user  qazando@gmail.com

Digitar Senha
    Input Text  id:password  123456

Clicar em login
    Click Element  id:btnLogin


** Test Cases **
Cenário 1: Logar com sucesso
    Acessar site da qazando
    Aguardar site carregar
    Digitar Email
    Digitar Senha
    Clicar em login
