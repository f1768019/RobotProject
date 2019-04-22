*** Settings ***
Library    SeleniumLibrary  
         

*** Test Cases ***
TestGoogle
    Open Browser      http://www.google.com      browser=Chrome
    Set Browser Implicit Wait    30
    Input Text      name=q        Automation Step by Step
    Press Keys     name=q     ENTER
    #Press Keys    name=q    ESC
    #Click Element    name=btnK   
    Sleep    2    
    Close Browser
    Log    Test Complete 
    
SampleLoginTest
    [Documentation]    This is a sample login test
    Open Browser        ${URL}       chrome
    Set Browser Implicit Wait    5
    LoginKW
    Click Element    id=welcome   
    Click Element    Link=Logout
    Close Browser
    Log    Test Complete 
    Log    ${TEST NAME} executed by %{username} on %{os} 
    
*** Variables ***
${URL}       https://opensource-demo.orangehrmlive.com/  
@{CREDENTIAL}          Admin       admin123
&{LOGINDATA}    user=Admin    password=admin123   

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    @{CREDENTIAL}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[password]
    Click Button    id=btnLogin
    