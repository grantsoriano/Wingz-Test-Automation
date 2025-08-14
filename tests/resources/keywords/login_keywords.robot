*** Settings ***
Library         SeleniumLibrary
Variables       ../../../data/input/input_creds.py
Variables       ../../../config/selenium_config.py
Variables       ../resource_mapping/pages/page_login.py
Variables       ../resource_mapping/pages/page_main.py


*** Keywords ***
Login
    Open Browser    ${selenium_config["login_url"]}    ${selenium_config["browser"]}
    Maximize Browser Window
    Input Text    ${page_login_details["email"]}    ${input_creds["email"]}
    Input Text    ${page_login_details["password"]}    ${input_creds["password"]}
    Click Button    ${page_login_details["login_button"]}
    Wait Until Element Is Visible    ${page_main_details["signout_button"]}    timeout=5s
