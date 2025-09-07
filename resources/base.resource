*** Settings ***
Documentation       Main

Library             Browser
Resource            ./actions.resource

*** Variables ***
${BASE_URL}         https://loginxp.vercel.app
${BROWSER}          chromium
${CHANNEL}          stable
${IS_HEADLESS}      True

*** Keywords ***
Start Browser
    New Browser    browser=${BROWSER}    headless=${IS_HEADLESS}  channel=${CHANNEL}
    New Page       ${BASE_URL}

Finalizar e Tirar Screenshot
    Take Screenshot    fullPage=true    filename=screenshot-${BROWSER}-${CHANNEL}
    Close Browser