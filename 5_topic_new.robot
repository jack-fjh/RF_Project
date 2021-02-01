*** Settings ***
Documentation               演示使用resource
Library                     SeleniumLibrary
Suite Setup                 用户登录到系统             testuser2           123456
Suite Teardown              Close Browser
Test Setup                  Log to Console      开始执行test        #每个case执行之前做的操作
Test Teardown               Capture Page Screenshot     #每个case执行之后做的操作
Resource                    resource.txt

*** Test Cases ***
发帖测试
    Click Element               css:span[class="span-success"]
    用户发帖

删除帖子测试
    log to console              ------删除话题------