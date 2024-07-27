*** Settings ***

Resource    ../utils/resource/resource.robot
Library    SeleniumLibrary

*** Keywords ***

Import Elements
    Add Image Path    ${EXECDIR}/utils/elements

End Test
    Capture Screen
    Close Application    BugBakery
Start Session
    Import Elements
    Click    bugbakery_logo.png
    Sleep    1

End Session
    Stop Remote Server

Register Employee
    Click     cadastro_btn.png
    Click     funcionario_register.png
    SikuliLibrary.Input Text    nome_field.png       Juan
    SikuliLibrary.Input Text    cargo_field.png      Caixa
    SikuliLibrary.Input Text    cpf_field.png        11111111112
    SikuliLibrary.Input Text    salario_field.png    2000
    Click     cadastrar_btn.png
    Exists    success_employee.png
    Click     ok_btn
    Click     exit_btn.png

Register Product
    Click     cadastro_btn
    Click     produto_register.png
    SikuliLibrary.Input Text    nome_field.png             Suco de Morango
    SikuliLibrary.Input Text    quantidade_field.png       4
    SikuliLibrary.Input Text    valor_field.png            9
    Click     cadastrar_btn.png
    Exists    success_product.png
    Click     ok_btn
    Click     exit_btn.png

Order Product
    Click                            vendas_btn.png
    Press Special Key                F1
    Double Click                     select_employee.png
    Press Special Key                F3
    Double Click                     suco_select.png
    SikuliLibrary.Input Text         order_quantity.png    1
    Press Special Key                ENTER
    Press Special Key                F6
    Exists                           order_success.png


