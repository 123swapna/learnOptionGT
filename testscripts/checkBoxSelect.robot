*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${appurl}   https://codepen.io/RobotsPlay/pres/pyNLdL
${browser}      chrome



*** Test Cases ***
Slecte_checkbox
         open browser   ${appurl}    ${browser}
        # Maximize browser
        Maximize Browser Window
        
        Select Frame    result
        Click Element  //label[@class='dropdown-label']

        Checkbox Should Be Selected    //input[@value='Selection 3']
        Select Checkbox  //input[@value='Selection 3']
        Sleep   3

        Checkbox Should Be Selected    //input[@value='Selection 5']
        Select Checkbox  //input[@value='Selection 5']
        Sleep   3



