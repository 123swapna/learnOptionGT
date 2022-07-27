*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${appurl}   https://the-internet.herokuapp.com/checkboxes
${appURL1}  https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/radio
${browser}  chrome
${frame}    //iframe[@class'=interactive is-tabbed-standard-height']

*** Test Cases ***
TC_001
        open browser   ${appurl}    ${browser}
        # Maximize browser
        Maximize Browser Window
        # Check Box Validation ...
        Checkbox Should not Be Selected  (//input[@type='checkbox'])[1]
        Checkbox Should Be Selected     (//input[@type='checkbox'])[2]

        # Select Checkbox 1 & Validate
        Select Checkbox     (//input[@type='checkbox'])[1]
        sleep   3
        Checkbox Should Be Selected     (//input[@type='checkbox'])[1]
        # Uncheck Checkbox 2
        Unselect Checkbox       (//input[@type='checkbox'])[2]
        sleep   3
        Checkbox Should not Be Selected     (//input[@type='checkbox'])[2]

        Close All Browsers

TC_002
        open browser   ${appURL1}    ${browser}
        Maximize Browser Window
        Select Frame    ${frame}
        Unselect Frame

*** Keywords ***