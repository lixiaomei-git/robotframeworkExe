*** Settings ***
Resource          newresource.robot

*** Test Cases ***
Case-2-9-2
    Ramdon    arg1value    \    arg31    arg32

Case-2-9-3
    ${getArg1}    Ramdon-2    arg1Value
    log    ${getArg1}
    @{getArg2}    Ramdon-2    arg2Value
    log    =@{getArg2}=
    ${ValArg1}    ${ValArg2}    Ramdon-2    arg2Value
    log    ${ValArg1}=${ValArg2}
