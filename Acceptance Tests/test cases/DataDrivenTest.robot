*** Settings ***
Documentation  Tutorials Point Automation Testing
Library           SeleniumLibrary
Library           OperatingSystem
Library            Collections
Library             BuiltIn
Resource       ../data/DataDrivenTest-data.robot
Resource       ../lib/DataDrivenTest-lib.robot


Test Setup  Open Chrome Browser
Test Teardown  Close Chrome Browser


*** Test Cases ***
ToolsQA Data Driven Testing Demo
    
    Practice Automation Form
    