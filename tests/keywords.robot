*** Settings ***

Resource    ../_support/resource.robot

*** Keywords ***
Import Elements
    Add Image Path    ${EXECDIR}/_utils/elements

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
    SikuliLibrary.Input Text    nome_field.png       ${employee_field['nome_field']}
    SikuliLibrary.Input Text    cargo_field.png      ${employee_field['cargo_field']}
    SikuliLibrary.Input Text    cpf_field.png        ${employee_field['cpf_field']}
    SikuliLibrary.Input Text    salario_field.png    ${employee_field['salario_field']}
    Click     cadastrar_btn.png
    Exists    success_employee.png
    Click     ok_btn
    Click     exit_btn.png

Register Product
    Click     cadastro_btn
    Click     produto_register.png
    SikuliLibrary.Input Text    nome_field.png             ${product_field['nome_field']}
    SikuliLibrary.Input Text    quantidade_field.png       ${product_field['quantidade_field']}
    SikuliLibrary.Input Text    valor_field.png            ${product_field['valor_field']}
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
    SikuliLibrary.Input Text         order_quantity.png    ${order_field['order_quantity']}
    Press Special Key                ENTER
    Press Special Key                F6
    Exists                           order_success.png