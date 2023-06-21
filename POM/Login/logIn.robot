*** Settings ***

Library    AppiumLibrary

*** Variables ***
${LOGIN}         studentbk01        
${PASS}          123456



${LOGIN_USER}        //android.widget.EditText[@index='1']

${LOGIN_PASS}        //android.widget.EditText[@index='2']

${BUTTON_LOGIN}      //android.widget.Button[@content-desc="Login"]

${HOME}              //android.view.View[@index='4']





*** Keywords ***

Open app

    Open Application   http://localhost:4723/wd/hub      deviceName=emulator-5554      platformName=android        automationName=UiAutomator2    appPackage=com.example.kstudent    appActivity=com.example.kstudent.MainActivity

Login
    Wait Until Element Is Visible          ${LOGIN_USER}
    Click Element                          ${LOGIN_USER}
    Wait Activity                          .MainActivity        3
    Input Text                             ${LOGIN_USER}        ${LOGIN}
    Click Element                          ${LOGIN_PASS}
    Input Text                             ${LOGIN_PASS}        ${PASS}
    Click Element                          ${BUTTON_LOGIN}
    Page Should Contain Element            ${HOME}