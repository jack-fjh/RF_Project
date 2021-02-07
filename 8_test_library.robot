*** Settings ***
Documentation               如何使用自定义的库
Library                     ../common/utils.py

*** Test Cases ***
使用自定义库
    ${value}         get_topic_id            http://49.233.108.117:3000/topic/6018170f03a1bc68d60fd7b4
    log to consol e      ${value}