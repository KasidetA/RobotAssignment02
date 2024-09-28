*** Settings ***
Library    OperatingSystem
Library    Collections

*** Keywords ***
Write yaml file
    [Arguments]    ${file_name}    ${data}
    ${yaml_str}    Evaluate    __import__('yaml').dump(${data})
    Create File    ${file_name}    ${yaml_str}

Generate and save uuid email
    ${UUID}     Evaluate                str(__import__('uuid').uuid4())
    ${Short_UUID}    Set Variable       ${UUID}[0:8]
    ${email}    Set Variable            ${Short_UUID}@gmail.com
    ${data}     Create Dictionary       email=${email}
    Write yaml file    ../resources/testdata/uuid_email.yaml    ${data}

