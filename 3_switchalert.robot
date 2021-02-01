*** Settings ***
Documentation               演示切换alert窗口(alert也就是弹窗)
Library                     SeleniumLibrary


*** Test Cases ***
切换alert窗口
    Set Selenium Speed          1
    Open Browser                http://49.233.108.117:3000/signin       chrome
    Input Text                  id:name             testuser1
    Input Password              id:pass             123456
    Click Element               css:[value='登录']
    Go To                       http://49.233.108.117:3000/user/testuser1
    Click Element               css:div[id='content']>div:nth-child(2)>div:nth-child(2)>div.topic_title_wrapper>a
    Click Element               css:[title='删除']
    ${message}                  Handle Alert        DISMISS
    log to console              >>>>${message}<<<<

