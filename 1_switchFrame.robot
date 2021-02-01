*** Settings ***
Documentation               演示切换iframe
Library                     SeleniumLibrary

*** Test Cases ***
安居客演示demo
    #打开浏览器
    Open Browser            https://login.anjuke.com/login/form             chrome
    #使用id来定位frame
    Select Frame            id:iframeLoginIfm
    #输入文本内容
    Input Text              id:phoneIpt             18516735897
    #移出frame
    Unselect Frame
    #点击内容
    Click Element           css:div[id='footer']>ul>li:nth-child(1)>a


