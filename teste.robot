** Settings **
Library  SeleniumLibrary

** Variables **
${SITE_QAZANDO}  https://automationpratice.com.br/
${EMAIL}  qazando@gmail.com
${SENHA}  123456
${SITE_BRUNO}  https://www.brunodorea.com.br/

** Keywords **
Acessar site da qazando
    Open Browser  ${SITE_QAZANDO}  chrome
    Maximize Browser Window  # Abrir navegador maximizado

Clicar em opção Login
    Click Element  xpath://a[@href='/login']

Aguardar site carregar
    Sleep  5s

Digitar Email
    Input Text  id:user  ${EMAIL}

Digitar Senha
    Input Text  id:password  ${SENHA}

Clicar no botão Login
    Click Element  id:btnLogin

Captura de Tela
    Capture Page Screenshot

Acessar site pessoal como headless
    Open Browser  ${SITE_BRUNO}  chrome  options=add_argument("--headless")

** Test Cases **
Cenário 1: Logar com sucesso
    [Tags]  Regressivo
    Acessar site da qazando
    Aguardar site carregar
    Clicar em opção Login
    Aguardar site carregar
    Digitar Email
    Digitar Senha
    Clicar no botão Login
    Aguardar site carregar
    Captura de Tela

Cenário 2: Acessar site Dev
    [Tags]  Pessoal
    Acessar site pessoal como headless
    Aguardar site carregar
    Captura de Tela
