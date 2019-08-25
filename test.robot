*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Test Template     Able to Launch Browser And Get Title
# xvfb-run -e /dev/stdout /home/ubuntu/.local/bin/robot test.robot
# pip3 install --user git+https://github.com/timgrossmann/InstaPy.git@dev
# xvfb-run -e /dev/stdout python3 simple_but_effective.py --headless-browser

*** Variables ***
${LOGIN URL}      https://www.instagram.com/

*** Test Cases ***                  BROWSER
Chrome Browser                      Chrome
Firefox Browser                     Firefox
Headless Firefox                    Headless Firefox
Headless Chrome                     Headless Chrome
# PhantomJS                           PhantomJS

*** Keywords ***
Able to Launch Browser And Get Title
    [Arguments]     ${BROWSER}
    Open Browser    ${LOGIN URL}    ${BROWSER}
    ${t}=           Get Title
    Log             ${t}     level=DEBUG
    Title Should Be    Instagram
    [Teardown]    Close Browser