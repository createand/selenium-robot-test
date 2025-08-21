*** Keywords ***
Open Browser To Google
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window

Input Search Term
    [Arguments]    ${term}
    Input Text    name=q    ${term}
    Press Keys    name=q    RETURN

