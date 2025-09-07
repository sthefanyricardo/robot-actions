*** Settings ***
Documentation       Main

Resource            main.resource

*** Variables ***
${BASE_URL}         https://loginxp.vercel.app
${BROWSER}          chromium
${CHANNEL}          
${IS_HEADLESS}      True

*** Keywords ***
Start Browser
    New Browser    browser=${BROWSER}    headless=${IS_HEADLESS}  channel=${CHANNEL}
    New Page       ${BASE_URL}

Finalizar e Tirar Screenshot
    IF    '${CHANNEL}' != ''
        ${filename}    Set Variable    screenshot-${BROWSER}-${CHANNEL}
    ELSE
        ${filename}    Set Variable    screenshot-${BROWSER}
    END
    Take Screenshot    fullPage=true    filename=${filename}
    Close Browser