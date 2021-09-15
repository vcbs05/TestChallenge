*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${findText}     Testing Concepts
${nameBrowser}     Chrome
${URL}  https://www.reddit.com/
${titleHP}  Reddit - Dive into anything

*** Keywords ***
Change Nite Mode
    Click element    id=USER_DROPDOWN_ID
    Click element    css=._2e2g485kpErHhJQUiyvvC2

*** Test Cases ***
01 Test Search Funcionality
    Open Browser    ${URL}  ${nameBrowser}
    Title should be     ${titleHP}
    Change Nite Mode
    Input text    id=header-search-bar    ${findText}
    Press keys   xpath=//*[@id="header-search-bar"]     ENTER
    Click element    css=#t3_p9xdg2
    Click element    css=._30BbATRhFv3V83DHNDjJAO
    Title should be     ${titleHP}
    Change Nite Mode