*** Settings ***
Suite Setup    Open Browser
Library    Browser
Library    Dialogs
Resource    ../Keywords/CommonKeywords.robot
Resource    ../Keywords/MainPageKeywords.robot
Resource    ../Keywords/SearchPageKeywords.robot
Resource    ../Keywords/WishlistPageKeywords.robot

***Variables***
${user}    antonmishin92@gmail.com
${pw}      WestwingPass

*** Test Cases ***
Example Test
    Open MainPage
    Search    möbel
    Login    ${user}    ${pw}
    Add product to the wishlist by the position    1
    Go to Wishlist
    Delete From Wishlist By Position    1
    Wishlist Should Be Empty
