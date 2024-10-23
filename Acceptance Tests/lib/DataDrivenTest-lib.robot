*** Settings ***
Library            SeleniumLibrary    
Library           OperatingSystem
Library            Collections
Library             BuiltIn
Resource       ../data/DataDrivenTest-data.robot


*** Keywords ***
Open Chrome Browser

    [Tags]  This will open the specified URL in the specified browser

    # Run  taskkill /F /im chromedriver.exe
	# Run  taskkill /F /im chrome.exe
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Click Link    ACCEPT

Close Chrome Browser

    [Tags]  This will close the specified browser

	Close Browser

Practice Automation Form

    [Tags]  This is to capture the user data inputs

    ${count}    Get Length    ${fname}
    :FOR    ${INDEX}    IN RANGE    ${count}    
    \    Run keyword if  ${INDEX} != ${count}  Run keyword  Multiple User Inputs ${INDEX}

Multiple User Inputs ${INDEX}

    Wait Until Element Is Visible  name=firstname  timeout=${Delay}
    Input Text  name=firstname  ${fname[${INDEX}]}

    Wait Until Element Is Visible  id=lastname  timeout=${Delay}
    Input Text  id=lastname  ${lname[${INDEX}]}

    Select Sex ${INDEX}
    
    Capture Page Screenshot    ${fname[${INDEX}]}_${lname[${INDEX}]}_1.png

    Select Yr of Exp ${INDEX}

    Select Profession ${INDEX}

    Select Selenium Flavors ${INDEX}
    
    Capture Page Screenshot    ${fname[${INDEX}]}_${lname[${INDEX}]}_2.png

    Select Continents ${INDEX}
    
    Capture Page Screenshot    ${fname[${INDEX}]}_${lname[${INDEX}]}_3.png
    
    Click Element  id=submit

Select Sex ${INDEX}

    Run Keyword IF  '${sex[${INDEX}]}' == 'Male'  Click Element  xpath=//input[@value='Male']
    Run Keyword IF  '${sex[${INDEX}]}' == 'Female'  Click Element  xpath=//input[@value='Female']

Select Yr of Exp ${INDEX}

    Run Keyword IF  '${YOE[${INDEX}]}' == '1'  Click Element  xpath=//input[@value='1']
    Run Keyword IF  '${YOE[${INDEX}]}' == '2'  Click Element  xpath=//input[@value='2']
    Run Keyword IF  '${YOE[${INDEX}]}' == '3'  Click Element  xpath=//input[@value='3']
    Run Keyword IF  '${YOE[${INDEX}]}' == '4'  Click Element  xpath=//input[@value='4']
    Run Keyword IF  '${YOE[${INDEX}]}' == '5'  Click Element  xpath=//input[@value='5']
    Run Keyword IF  '${YOE[${INDEX}]}' == '6'  Click Element  xpath=//input[@value='6']
    Run Keyword IF  '${YOE[${INDEX}]}' == '7'  Click Element  xpath=//input[@value='7']

Select Profession ${INDEX}
   
    Run Keyword IF  '${Prof[${INDEX}]}' == 'Manual'  Click Element  xpath=//input[@value='Manual Tester']
    Run Keyword IF  '${Prof[${INDEX}]}' == 'Automation'  Click Element  xpath=//input[@value='Automation Tester']
    Run Keyword IF  '${Prof[${INDEX}]}' == 'Both'  Both Profession

Both Profession

    Click Element  xpath=//input[@value='Manual Tester']

    Click Element  xpath=//input[@value='Automation Tester']

Select Selenium Flavors ${INDEX}

    Run Keyword IF  '${Tool[${INDEX}]}' == 'QTP'  Click Element  xpath=//input[@value='QTP']
    Run Keyword IF  '${Tool[${INDEX}]}' == 'IDE'  Click Element  xpath=//input[@value='Selenium IDE']
    Run Keyword IF  '${Tool[${INDEX}]}' == 'Webdriver'  Click Element  xpath=//input[@value='Selenium Webdriver']
    Run Keyword IF  '${Tool[${INDEX}]}' == 'QTP & IDE'  QTP_Selenium IDE
    Run Keyword IF  '${Tool[${INDEX}]}' == 'QTP & Webdriver'  QTP_Selenium Webdriver
    Run Keyword IF  '${Tool[${INDEX}]}' == 'IDE & Webdriver'  Selenium IDE_Selenium Webdriver
    Run Keyword IF  '${Tool[${INDEX}]}' == 'All'  All Tools

QTP_Selenium IDE

    Click Element  xpath=//input[@value='QTP']

    Click Element  xpath=//input[@value='Selenium IDE']

QTP_Selenium Webdriver

    Click Element  xpath=//input[@value='QTP']

    Click Element  xpath=//input[@value='Selenium Webdriver']

Selenium IDE_Selenium Webdriver

    Click Element  xpath=//input[@value='Selenium IDE']

    Click Element  xpath=//input[@value='Selenium Webdriver']

All Tools

    Click Element  xpath=//input[@value='QTP']

    Click Element  xpath=//input[@value='Selenium IDE']

    Click Element  xpath=//input[@value='Selenium Webdriver']

Select Continents ${INDEX}

    Run Keyword IF  '${Continent[${INDEX}]}' == 'Asia'  Asia
    Run Keyword IF  '${Continent[${INDEX}]}' == 'Europe'  Europe
    Run Keyword IF  '${Continent[${INDEX}]}' == 'Africa'  Africa
    Run Keyword IF  '${Continent[${INDEX}]}' == 'Australia'  Australia
    Run Keyword IF  '${Continent[${INDEX}]}' == 'South America'  South America
    Run Keyword IF  '${Continent[${INDEX}]}' == 'North America'  North America
    Run Keyword IF  '${Continent[${INDEX}]}' == 'Antartica'  Antartica

Asia

    Wait Until Element Is Visible  id=continents  timeout=${Delay}
    Click Element  id=continents   
    Select From List By Value    id=continents    AS

Europe

    Wait Until Element Is Visible  id=continents  timeout=${Delay}
    Click Element  id=continents
    Select From List By Value    id=continents    EU

Africa

    Wait Until Element Is Visible  id=continents  timeout=${Delay}
    Click Element  id=continents
    Select From List By Value    id=continents    AF

Australia

    Wait Until Element Is Visible  id=continents  timeout=${Delay}
    Click Element  id=continents
    Select From List By Value    id=continents    AUS

South America

    Wait Until Element Is Visible  id=continents  timeout=${Delay}
    Click Element  id=continents
    Select From List By Value    id=continents    SA

North America

    Wait Until Element Is Visible  id=continents  timeout=${Delay}
    Click Element  id=continents
    Select From List By Value    id=continents    NA

Antartica

    Wait Until Element Is Visible  id=continents  timeout=${Delay}
    Click Element  id=continents
    Select From List By Value    id=continents    AN

