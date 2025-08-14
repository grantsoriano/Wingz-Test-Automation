# Wingz Test Automation

A [Robot Framework](https://robotframework.org/) project for automated testing of the Wingz application.

## Features
- Automated functional tests for web and mobile
- Uses SeleniumLibrary for browser automation
- Data-driven tests with variables and resource files
- Supports parallel execution

Wingz-Test-Automation/
├── config/
│ └── selenium_config.py
├── data/
│ ├── expected/
│ │ └── expected_profile.robot
│ └── input/
│ ├── input_creds.robot
│ └── input_profile.robot
├── env/
├── output/
│ └── reports/
├── tests/
│ ├── profile/
│ │ └── test_update_profile.robot
│ └── resources/
│ ├── keywords/
│ │ ├── login_keywords.robot
│ │ └── profile_keywords.robot
│ └── resource_mapping/
│ └── pages/
│ ├── page_login/
│ ├── page_main/
│ └── page_profile/

## Installation & Setup
1. Clone the repository
2. Create a Python virtual environment
3. Activate environment
4. Install requirements
