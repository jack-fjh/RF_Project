*** Settings ***
Documentation               演示使用resource
Library                     SeleniumLibrary
Resource                    resource.txt

*** Test Cases ***
发帖测试
    ${value}                    用户登录到系统                 testuser2       123456
    log to console              ${value}
    Click Element               css:span[class="span-success"]
    用户发帖
    [Teardown]                  Close Browser

删除帖子测试