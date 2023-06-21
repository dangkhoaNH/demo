*** Settings ***
Resource        ../POM/Login/logIn.robot

*** Test Cases ***
TC_LOG_IN_01 - logIn
    Open app
    Login