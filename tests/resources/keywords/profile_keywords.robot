*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/login_keywords.robot
Variables       ../resource_mapping/pages/page_main.py
Variables       ../resource_mapping/pages/page_profile.py
Variables       ../../../data/expected/expected_profile.py


*** Keywords ***
Open Profile Page
    Login
    Click Element    ${page_main_details["accounts"]}
    Wait Until Page Contains Element    ${page_profile_details["profile_photo"]}    timeout=5s
    Click Element    ${page_profile_details["profile_tab"]}
    Wait Until Page Contains Element    ${page_profile_details["first_name"]}

Fill Profile Form
    [Arguments]    ${first_name}    ${last_name}    ${home_city}    ${bio}    ${gender_locator}=${EMPTY}
    IF    "${gender_locator}" != ""    Click Element    ${gender_locator}
    Input Text    ${page_profile_details["first_name"]}    ${first_name}
    Input Text    ${page_profile_details["last_name"]}    ${last_name}
    Input Text    ${page_profile_details["home_city"]}    ${home_city}
    Input Text    ${page_profile_details["bio"]}    ${bio}

Click Save And Verify Success
    Click Button    ${page_profile_details["save_button"]}
    Wait Until Element Contains    ${page_profile_details["save_button"]}    ${expected_profile["saved"]}    timeout=5s

Click Save And Verify Error
    Click Button    ${page_profile_details["save_button"]}
    Wait Until Page Contains Element    ${page_profile_details["save_error"]}    timeout=5s
