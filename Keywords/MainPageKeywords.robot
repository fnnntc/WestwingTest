***Setting***
Variables      ../Pages/MainPage.py
Variables      ../Pages/LoginFramePage.py

***Keywords***
Open MainPage
    Go To    ${url}

Login
    [Arguments]    ${user}    ${pw}
    Click    ${hierEinloggenButton}
    Fill Text    ${emailInput}    ${user}
    Fill Text    ${passwordInput}    ${pw}
    #Click    ${isTermsAccepted}
    Click    ${registrierenButton}
    LoginFrame Should Not Be Visible

LoginFrame Should Not Be Visible
    Wait For Elements State    ${loginFrame}    state=detached
