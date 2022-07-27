*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${appurl}        https://the-internet.herokuapp.com/javascript_alerts
${browser}       chrome

*** Keywords ***
LaunchMyWebsite
        Open Browser    ${appurl}   ${browser}
         # Maximize browser
        Maximize Browser Window

CloseMyWebsite
        Close All Browsers
