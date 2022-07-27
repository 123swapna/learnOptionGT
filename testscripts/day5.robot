*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${appurl}       https://www.docker.com/
${browsername}    chrome
${expectedTitle}  google


*** Test Cases ***
TC_001

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser
    Maximize Browser Window
    #Scroll down and validate dockerlogo
    Scroll Element Into View    (//a[text()='legal'])[1]

    #mouse hover on the links
    Mouse Over    //a[text()='Products'][1]
    Sleep    3
    Mouse Over   //a[text()='Developers'][1]
    Sleep    3
    Mouse Over    //a[text()='About Us'][1]
    Sleep    3

    #Scroll down and validate dockerlogo
    Scroll Element Into View    (//a[text()='Legal'])

    # validate
    Input Text    //input[@id='Email']    1234
    Click Button    //button[text()='Subscribe']
    Sleep    3
    Page Should Contain Element    //div[@id='ValidMsgEmail']
    Sleep   2
    Close All Browsers