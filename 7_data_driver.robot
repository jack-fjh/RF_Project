*** Settings ***
Documentation               数据驱动
Library                     SeleniumLibrary
Library                     DataDriver          ./data/data2.csv
#因为m1芯片的mac无法安装pandas和numpys，所以下面的数据驱动无法执行，只能使用csv
#Library                     DataDriver          ./data/data.xlsx        sheet_name=sheet1
Test Template               用户登录
Test Setup                  Open Browser        ${loginURL}         chrome
Test Teardown              Close Browser
Default Tags                smoketesting        回归测试        #这里可以添加多个标签
#...                         encoding=utf-8
#...                         dialect=Excel-EU
#...                         delimiter=;
#...                         quotechar=''
#...                         escapechar=\\\\
#...                         doublequote=Excel-EU
#...                         skipinitialspace=False
#...                         lineterminator=\\r\\n
#...                         sheet_name=0
#...                         reader_class=${None}
#...                         file_search_strategy=PATH
#...                         file_regex=${None}}
#...                         include=${None}
#...                         exclude=${None}





*** variables ***
${loginURL}                 http://49.233.108.117:3000/signin


#*** Test Cases ***              Username            Password            [Tags]          [Documentation]
#用户名或密码错误                    alex                123456
#用户登录成功                          testuser1           123456
#信息不完整                           testuser1           ${empty}            123             documentation内容

*** Test Cases ***
使用用户名和密码进行登录'${username}' and password '${password}'

*** keywords ***
用户登录
    [Arguments]                 ${username}         ${password}
#     Open Browser                ${loginURL}       chrome
    Input Text                  id:name             ${username}
    Input Password              id:pass             ${password}
    Click Element              css:input[class="span-primary"]