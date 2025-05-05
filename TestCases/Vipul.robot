*** Settings ***
Library     SeleniumLibrary
Resource   ../Locators/Locator.robot
Resource   ../Keywords/Keywords.robot

*** Test Cases ***
QATest
    Open Browser           ${URL}          chrome
    Maximize Browser Window
    Sleep        2s
    Click Element    ${Sign_In_Mainpage}
    Sleep        2s
    Login with Valid Credential  ${Enter_Email_Address}  ${Enter_Password}
    Capture Page Screenshot    custom_name.png
    Sleep    2s
    Verify the 3rd Notification