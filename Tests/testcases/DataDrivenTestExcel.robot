*** Settings ***
Library    SeleniumLibrary   
Library    DataDriver    ../testdata/OrangeHRM.xlsx    sheet_name=Cred
Resource    ../resources/Resource.robot

Suite Setup    Open Application
Suite Teardown    Close Application

Test Template    Login To Application

*** Test Cases ***
LoginTestWithExcel using ${username} and ${password}    Default    UserData
    
*** Keywords ***
Login To Application
    [Arguments]    ${username}    ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Click On Login Button    
    Run Keyword If    '${password}' == 'admin123'    Verify Dashboard Present And Logout    ELSE    Verify Error Message
    
Verify Dashboard Present And Logout
    Dashboard Should Be Present   
    Logout From Application 
    
Logout From Application
    Click Element    id:welcome
    Click Element    xpath://*[@id="welcome-menu"]/ul/li[2]/a    
    
Verify Error Message
    Error Message Should Be Visible    