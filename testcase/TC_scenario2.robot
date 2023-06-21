*** Settings ***
Resource        ../POM/Login/logIn.robot
Resource        ../POM/Registration/registration.robot
Resource        ../POM/Cancel/cancel.robot

*** Test Cases ***
TC_LOG_IN_01 - registration
    Open app
    Login
    Wait Activity                          .MainActivity        3
    Wait Until Element Is Visible          ${registration}
    Click Element                          ${registration}
    Wait Until Element Is Visible          ${course}
    Click Element                          ${course}
    Wait Until Element Is Visible          ${registrationBtn}
    Click Element                          ${registrationBtn}
    Wait Until Element Is Visible          ${yesBtn}
    Click Element                          ${yesBtn}
    Wait Until Element Is Visible          ${dismissBtn}
    Click Element                          ${dismissBtn}
    Wait Until Element Is Visible          ${cancel}
    Click Element                          ${cancel}