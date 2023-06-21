*** Settings ***

Library              AppiumLibrary

*** Variables ***
${LOGIN}             studentbk01       
${PASS}              123456


${path}              xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/
...                  android.widget.FrameLayout/android.view.View/android.view.View/
...                  android.view.View

${course}            ${path}/android.view.View[1]/android.view.View/android.view.View[2]/
...                  android.view.View/android.view.View[1]/android.view.View[@index="0"]


${registration}      //android.view.View[@index="2"]
${registrationBtn}   //android.widget.Button[@index="6"]
${yesBtn}            //android.widget.Button[@content-desc="Yes"]
${dismissBtn}        //android.widget.Button[@content-desc="Dismiss"]