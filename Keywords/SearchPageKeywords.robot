***Setting***
Library      ../Pages/SearchPage.py

***Keywords***
MainContent Should Be Visible
    ${MainContent}=    getMainContent
    Wait For Elements State    ${MainContent}    state=visible

Search
    [Arguments]    ${searchText}
    Fill Text    ${searchInput}    ${searchText}
    Press Keys    ${searchInput}    Enter
    MainContent Should Be Visible
