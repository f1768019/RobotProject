*** Test Cases ***
Example
    One Argument     arg1
    
    Two Argument     arg1    arg2
    
    Two Argument with default    arg1    
    
    Two Argument with default    arg1   arg2 
    
Arguments Example   
    Required, Default, Arguments    required_arg    optional_arg    arg1    arg2    arg3    arg4

*** Keywords ***
One Argument
    [Arguments]    ${arg1}
    Log    One Argument: ${arg1}
    
Two Argument
    [Arguments]    ${arg1}  ${arg2}
    Log    Two Arguments: ${arg1} ${arg2}
    
Two Argument with default
    #[Arguments]    ${arg1}=Default Arg1    ${arg2}=${optional} 
    [Arguments]    ${arg1}    ${arg2}==default 2
    [Documentation]    This keyword take 0-2 arguments
    Log    Two Argument with default
    Log    Arg1 = ${arg1}
    Log    Arg2 = ${arg2}  
    
Required, Default, Arguments
    [Arguments]    ${required}    ${opt}=42    @{args}
    Log    Required: ${required}
    Log    Optional: ${opt}
    Log    Arguments: @{args}
    FOR    ${item}    in     @{args}
        Log    ${item}
    END        