*** Settings ***

Resource    ../utils/resource/resource.robot

Suite Setup    Start Session
Suite Teardown    End Session

*** Test Cases ***
Register and Order
    Register Employee
    Register Product
    Order Product
    End Test