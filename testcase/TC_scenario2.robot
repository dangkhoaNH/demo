*** Settings ***
Resource        ../POM/Login/logIn.robot
Resource        ../POM/Registration/registration.robot
Resource        ../POM/Cancel/cancel.robot
Resource        ../POM/Schedule/schedule.robot
Resource        ../POM/Logout/logOut.robot

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
    Wait Until Element Is Visible          ${scheduleBtn}
    Click Element                          ${scheduleBtn}
    Wait Until Element Is Visible          ${monthBtn}
    Click Element                          ${monthBtn}
    Click Element                          ${monthBtn}
    Wait Until Element Is Visible          ${nextBtn}
    Click Element                          ${nextBtn}
    Wait Until Element Is Visible          ${cancel}
    Click Element                          ${cancel}
    Wait Until Element Is Visible          ${courseCancel}
    Click Element                          ${courseCancel}
    Wait Until Element Is Visible          ${cancelBtn}
    Click Element                          ${cancelBtn}
    Wait Until Element Is Visible          ${yesBtn}
    Click Element                          ${yesBtn}
    Wait Until Element Is Visible          ${schedule}
    Click Element                          ${schedule}
    Wait Until Element Is Visible          ${monthBtn}
    Click Element                          ${monthBtn}
    Click Element                          ${monthBtn}
    Wait Until Element Is Visible          ${nextBtn}
    Click Element                          ${nextBtn}
    Click Element                          ${Profile}
    Wait Until Element Is Visible          ${SETTING}        10
    Click Element                          ${SETTING}
    Click Element                          ${LOGOUT}