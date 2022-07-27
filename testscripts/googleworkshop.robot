*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${appurl}       https://www.google.com
${browsername}    chrome
${expectedTitle}  google


*** Test Cases ***
TC_001

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser
    Maximize Browser Window

    # Validate Google Logo
    Page Should Contain Element    //im[@class='gb_1 gb_2 gb_8d gb_8c']

    validateGooglePathTitle
    validateGmaillink
    ValidateGmailTextBox
    close all browsers

TC_002

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser
    Maximize Browser Window

    # Validate Google Logo
    Page Should Contain Element    //im[@class='gb_1 gb_2 gb_8d gb_8c']

    validateGooglePathTitle
    close all browsers

*** Keywords ***
validateGooglePathTitle

       # validate title
       ${runtimepagetitle}  Get Title
       Log To Console    ${runtimepagetitle}
       Should Be True     """${expectedTitle}"""=="""${runtimepagetitle}"""

validateGmaillink

       # validate gmail link
       Page Should Contain Element  //a[text()='Gmail']

ValidateGmailTextBox

        # validate gmail search text box
       Page Should Contain Element  q
