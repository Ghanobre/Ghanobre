*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}    http://127.0.0.1:4723/wd/hub
${DEVICE_NAME}      emulator-5554
${PLATFORM}         Android

*** Test Cases ***
Abrir Configuracoes e Fechar
    Open Application    ${APPIUM_SERVER}
    ...    platformName=${PLATFORM}
    ...    automationName=UiAutomator2
    ...    deviceName=${DEVICE_NAME}
    ...    appium:skipDeviceInitialization=true
    ...    appium:newCommandTimeout=120
    ...    appPackage=com.android.settings
    ...    appActivity=.Settings
    Sleep    2s
    Close Application
