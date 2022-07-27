*** Settings ***
Library     DateTime

*** Variables ***

*** Test Cases ***
Learn_Date_Movement
    ${today_date}   Get Current Date
    Log To Console    ${today_date}
    ${Only_date}    Convert Date    ${today_date}   result_format=%a %B %d
    Log To Console    ${Only_date}

    #to make Date++
    ${date_plus_28}    Add Time To Date    ${today_date}    28 days
    Log To Console  28 form todays day is : ${date_plus_28}

     #TO make date --
     ${date_minus_28}    Add Time To Date    ${today_date}    -28 days
    Log To Console  28 form todays day is : ${date_minus_28}