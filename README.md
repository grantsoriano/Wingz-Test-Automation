# Wingz Test Automation

A [Robot Framework](https://robotframework.org/) project for automated testing of the Wingz application.

## Features
- Automated functional tests for web and mobile
- Uses SeleniumLibrary for browser automation
- Data-driven tests with variables and resource files
- Supports parallel execution

## Project Structure
|___ config/
|___|___ selenium_config.py/
|___ data/
|___|___ expected/
|___|___|__ expected_profile.robot
|___|___ input/
|___|___|__ input_creds.robot
|___|___|__ input_profile.robot
|___ output/
|___|___ reports/
|___ tests/
|___|___ profile/
|___|___|__ test_update_profile.robot
|___|___ resources/
|___|___|__ keywords/
|___|___|___|__ login_keywords.robot
|___|___|___|__ profile_keywords.robot
|___|___|__ resource_mapping/
|___|___|___|__ pages/
|___|___|___|___|__ page_login/
|___|___|___|___|__ page_main/
|___|___|___|___|__ page_profile/
|___ env/

## Installation & Setup
1. Clone the repository
2. Create a Python virtual environment
3. Activate environment
4. Install requirements
