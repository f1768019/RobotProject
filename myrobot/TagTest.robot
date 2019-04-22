*** Settings ***
Default Tags    srg

*** Test Cases ***
Test1
    [Tags]    smoke
    Log    In Test1
   
Test2
    [Tags]    regression
    Log    In Test2
    
Test3
    Log    In Test3        