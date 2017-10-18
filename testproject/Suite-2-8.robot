*** Variables ***
${val1}           value1
@{listVal1}       listItem1    listItem2    123

*** Test Cases ***
Case-2-8-1
    log    ${val1}
    log many    @{listVal1}
    log    %{Path}
    ${shuzhi}    Set Variable    ${2.6}

Case-2-8-2
    @{list}    Set Variable    ${2.6}    2.6
    ${valif}    Set Variable If    '${2.6}'=='2.6'    true    false
    ${length_val}    Get Length    ${valif}
    ${length_val3}    Get Length    ${list}
    log    ${val7}
    Run Keyword If    '${2.6}'=='2.6'    log    abcdefg
    ${val2}    Set Variable    abcdefg
    log    1234${val2}890
    log    ${val2[3:]}
    ${cal1}    Set Variable    '123'
    ${cal2}    Set Variable    ${123}
    ${cal3}    Evaluate    ${cal1}+1
    ${cal4}    Evaluate    ${cal2}+1
    ${cal5}    Evaluate    int(${cal1})+1

Case-2-8-3
    @{val3}    Set Variable    1    2    3
    @{listval3}    Create List    3    2    1
    Run Keyword    log    abcd    WARN
    ${keyword}    Set Variable    log
    @{args}    Create List    abcd    WARN
    Run Keyword    ${keyword}    @{args}
    @{userList}    Create List    a    b    c
    log    @{userList}[1]
    log    ${userlist[2]}
    @{listA}    Create List    1    2
    @{listB}    Create List    3    4
    @{listC}    Create List    ${listA}    ${listB}
    log    @{listC}[1][1]
    log    ${listC[1][1]}
    log    @{listC[1]}[1]

Case-2-8-4
    @{argVal4}    Create List    abcd    WARN
    log    @{argVal4}
    log    ${argVal4}
    ${argVal5}    Create List    efg    WARN
    log    @{argVal5}
    log    ${argVal5}
