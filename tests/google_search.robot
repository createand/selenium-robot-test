import robot

*** Setting ***
Library    SeleniumLibrary
Resource    ../resources/keywords.robot

*** Test Case ***
Google Search Test
    [Tags]    smoke
    Open Browser To Google
    Input Search Term    Robot Framework
    Page Should Contain    Robot Framework
    Close Browser
    