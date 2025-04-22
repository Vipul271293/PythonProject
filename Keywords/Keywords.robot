*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Resource  ../Locators/Locator.robot

*** Keywords ***
Login with Valid Credential
  [Arguments]  ${email}  ${password}
  Input Text    ${Email_Address_XPath}    ${Enter_Email_Address}
  Input Text    ${Password_XPath}  ${Enter_Password}
  Click Element    ${Login_Button}

Verify the 3rd Notification
  Click Element  ${Notifications_Link}
  Sleep    5s
   @{Notifications} =  Get WebElements   ${Notification_List}
   ${count} =    Get Length    ${notifications}
    Log    Total notifications found: ${count}
    Sleep    2s
    Run Keyword Unless    ${count} >= 3    Fail    Less than 3 notifications found!
    ${text}=    Get Text    ${Notification_3rd_Row}
    Sleep  2s
    Click Element    ${Notification_3rd_Row}   # Index starts from 0
    Sleep    2s
    ${URL}=  Get Location
    Sleep  5s


