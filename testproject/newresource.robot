*** Keywords ***
Ramdon
    [Arguments]    ${arg1}    ${arg2}=123    @{arg3}
    log    ${arg1}
    log    ${arg2}
    log    =@{arg3}=

Ramdon-1
    [Arguments]    ${arg1}    ${arg2}=123    @{arg3}
    log    ${arg1}
    log    ${arg2}
    log    =@{arg3}=
    [Return]    ${arg1}

Ramdon-2
    [Arguments]    ${arg1}    ${arg2}=123    @{arg3}
    log    ${arg1}
    log    ${arg2}
    log    =@{arg3}=
    [Return]    ${arg1}    ${arg2}

Ramdon-3
    [Arguments]    ${arg1}    ${arg2}=123    @{arg3}
    log    ${arg1}
    log    ${arg2}
    log    =@{arg3}=
    [Return]    @{arg3}
