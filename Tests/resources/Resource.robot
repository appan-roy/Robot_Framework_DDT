*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Open Application
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
Close Application
    Close Browser
    
Enter Username
    [Arguments]    ${uname}
    Input Text    id:txtUsername    ${uname}
    
Enter Password
    [Arguments]    ${pwd}
    Input Password    id:txtPassword    ${pwd}    
    
Click On Login Button
    Click Button    id:btnLogin
    
Error Message Should Be Visible
    Page Should Contain    Invalid credentials
    
Dashboard Should Be Present
    Page Should Contain    Dashboard        