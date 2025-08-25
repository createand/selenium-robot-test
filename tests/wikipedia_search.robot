*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${BROWSER}          chrome
${WIKIPEDIA_URL}    https://tr.wikipedia.org
${SEARCH_TERM}      Robot Framework
${SEARCH_INPUT}     css:#searchInput
#${SEARCH_BUTTON}    css:#searchButton
${SEARCH_BUTTON}    xpath://button[text()='Ara']
${FIRST_HEADING}    css:#firstHeading

*** Test Cases ***
Wikipedia Arama Testi
    [Documentation]    Wikipedia'da Robot Framework kelimesini arar ve sonuçları kontrol eder
    [Tags]    wikipedia    search    smoke
    
    # Tarayıcıyı aç ve Wikipedia ana sayfasına git
    Open Browser    ${WIKIPEDIA_URL}    ${BROWSER}    remote_url=
    Maximize Browser Window
    Set Selenium Speed    0.2s
    
    # Ana sayfa başlığını doğrula
    Wait Until Page Contains    Vikipedi
    Page Should Contain    Özgür Ansiklopedi
    
    # Arama kutusuna metin yaz ve ara
    Input Text    ${SEARCH_INPUT}    ${SEARCH_TERM}
    Click Button    ${SEARCH_BUTTON}
    
   
# Tarayıcıyı kapat
    Close Browser