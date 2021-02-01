*** Settings ***
Documentation           演示切换浏览器窗口
Library                 SeleniumLibrary


*** Test Cases ***
切换浏览器窗口
    Open Browser                https://www.baidu.com           chrome
    #设置全局等待时间
    Set Selenium Implicit Wait              10
    #设置运行时间，类似模拟人为有一定的操作时间间隙
    Set Selenium Speed                      1
    #输入文本内容
    Input Text                  id:kw       helloworld
    #点击百度一下
    Click Element               id:su
    #点击第一个搜索项
    Click Element               css:div[id='content_left']>div:nth-child(1)>h3>a
    #切换到当前最后一个窗口
    Switch Window               New
    #在切换后的窗口上输入内容
    Input Text                  id:query            你好
