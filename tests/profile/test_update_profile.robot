*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/keywords/profile_keywords.robot
Variables       ../../data/input/input_profile.py


*** Test Cases ***
TC-Wingz-001 - Update All Profile Fields
    [Tags]    tc-wingz-001
    Open Profile Page
    Fill Profile Form
    ...    ${input_profile["first_name"]}
    ...    ${input_profile["last_name"]}
    ...    ${input_profile["home_city"]}
    ...    ${input_profile["bio"]}
    ...    ${page_profile_details["male_radio"]}
    Click Save And Verify Success
    [Teardown]    Close Browser

TC-Wingz-003 - Update Profile with Missing First Name
    [Tags]    tc-wingz-003
    Open Profile Page
    Fill Profile Form
    ...    ${EMPTY}
    ...    ${input_profile["last_name"]}
    ...    ${input_profile["home_city"]}
    ...    ${input_profile["bio"]}
    ...    ${page_profile_details["male_radio"]}
    Click Save And Verify Error
    [Teardown]    Close Browser

TC-Wingz-004 - Update Profile with Missing Last Name
    [Tags]    tc-wingz-004
    Open Profile Page
    Fill Profile Form
    ...    ${input_profile["first_name"]}
    ...    ${EMPTY}
    ...    ${input_profile["home_city"]}
    ...    ${input_profile["bio"]}
    ...    ${page_profile_details["male_radio"]}
    Click Save And Verify Error
    [Teardown]    Close Browser

TC-Wingz-005 - Update Profile with Missing Gender Selection
    [Tags]    tc-wingz-005
    Open Profile Page
    Fill Profile Form
    ...    ${input_profile["first_name"]}
    ...    ${input_profile["last_name"]}
    ...    ${input_profile["home_city"]}
    ...    ${input_profile["bio"]}
    Click Save And Verify Success
    [Teardown]    Close Browser

TC-Wingz-006 - Update Bio Field which Exceeds Max Length
    [Tags]    tc-wingz-006
    Open Profile Page
    Fill Profile Form
    ...    ${input_profile["first_name"]}
    ...    ${input_profile["last_name"]}
    ...    ${input_profile["home_city"]}
    ...    ${input_profile["bio_over"]}
    ...    ${page_profile_details["male_radio"]}
    Click Save And Verify Success
    [Teardown]    Close Browser

TC-Wingz-007 - Update Bio Field with Exactly Max Length
    [Tags]    tc-wingz-007
    Open Profile Page
    Fill Profile Form
    ...    ${input_profile["first_name"]}
    ...    ${input_profile["last_name"]}
    ...    ${input_profile["home_city"]}
    ...    ${input_profile["bio_max"]}
    ...    ${page_profile_details["male_radio"]}
    Click Save And Verify Success
    [Teardown]    Close Browser
