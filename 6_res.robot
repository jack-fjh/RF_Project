*** Settings ***
Documentation               公共操作-登录


*** keywords ***
with args
    [Arguments]             @{}         ${username}         ${password}
    log to console          ${password}
with dict
    &{dict}         Create Dictionary           key=value       foo=bar
    log to console          ${dict}
with list
    @{list}         Create List     a   b   c
    log to console          ${list}


*** test cases ***
test1
    with args               username=alex          password=1
test2
    with dict
test3
    with list
