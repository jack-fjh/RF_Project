*** Settings ***
#文件开头固定写法
Documentation           test web app demo

Library                 SeleniumLibrary


*** Variables ***
#s设置变量




*** Test Cases ***
打开百度搜索              #测试用例的标题，可以使用任意语言来描述
    Open Browser        https://www.baidu.com   chrome
    Input Text          id:kw       helloworld
    Click Element       id:su