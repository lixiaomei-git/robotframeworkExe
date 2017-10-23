*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Case1
    Open Browser    https://mail.qq.com/    browser=chrome
    Select Frame    login_container
    Input Text    id=u    454595787
    Input Password    id=p    YdyrxBsbfl520
    Click Button    id=login_button
    Page Should Contain    收件箱
    Close Browser
