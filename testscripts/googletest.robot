*** Settings ***
Library       SeleniumLibrary


*** Variables ***

${appurl}   https://google.com  chrome


*** Test Cases ***
TC_001
        open browser    https://google.com  chrome
        Wait Until Page Contains Element    //img[@class='lnXdpd']


        # print the title of the page
        #//a[text()='Gmail']  //input[@class='gLFyf gsfi']
        ${currentpagetitle}      get title
        Log To Console    ${currentpagetitle}
        # validating the gmail link
        Wait Until Page Contains Element    //a[text()='Gmail']
        # Validating the google search
        Wait Until Page Contains Element    //input[@class='gLFyf gsfi']

        close all browsers



*** Keywords ***
Login feature



