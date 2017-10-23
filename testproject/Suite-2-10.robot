*** Test Cases ***
Case-2-10-1
    : FOR    ${i}    IN RANGE    2    10    2
    \    log    i=${i}
    : FOR    ${i}    IN    A    B    C
    \    log    i=${i}
    @{list}    Create List    1    3    R
    : FOR    ${m}    IN    @{list}
    \    log    m=${m}
    : FOR    ${m}    IN    ${list}
    \    log    m=${m}
    : FOR    ${i}    IN RANGE    3
    \    log    i=${i}
    \    ForJ    5.....ELlog${    S    ${i}

Case-2-10-8
    ${a}    Set Variable    0
    ${b}    Set Variable    5
    Run Keyword If    ${a}>=1    log    1
    ...    ELSE IF    ${b}<=4    log    2
    ...    ELSE    log    3
    :FOR    ${i}    IN RANGE    10
    \    LOG    i=${i}
    \    Exit For Loop If    ${I}>=7

*** Keywords ***
ForJ
    [Arguments]    ${arg1}
    : FOR    ${J}    IN RANGE    2
    \    LOG    arg=${arg1};j=${j}
