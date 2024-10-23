*** Settings ***
Library    SeleniumLibrary    
Resource    ../resources/Resource.robot

Suite Setup    Open Application
Suite Teardown    Close Application

*** Test Cases ***
Validate Login In OrangeHRM
    Login To Application    Admin    admin12
    Login To Application    Admin    admin123
    Login To Application    Admin    admin1234
    
*** Keywords ***
Login To Application
    [Arguments]    ${uname}    ${pwd}
    Enter Username    ${uname}
    Enter Password    ${pwd}
    Click On Login Button    
    Run Keyword If    '${pwd}' == 'admin123'    Verify Dashboard Present And Logout    ELSE    Verify Error Message
    
Verify Dashboard Present And Logout
    Dashboard Should Be Present   
    Logout From Application 
    
Logout From Application
    Click Element    id:welcome
    Click Element    xpath://*[@id="welcome-menu"]/ul/li[2]/a    
    
Verify Error Message
    Error Message Should Be Visible    