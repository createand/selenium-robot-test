*** Keywords ***
Open Browser To Google
    Open Browser    https://www.google.com    chrome    remote_url=${REMOTE_URL}
    Maximize Browser Window

Input Search Term
    [Arguments]    ${term}
    Input Text    name=q    ${term}
    Press Keys    name=q    RETURN

