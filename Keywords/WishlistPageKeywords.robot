***Setting***
Library      ../Pages/WishlistPage.py

***Keywords***
Product Should Be Added to Wishlist
    [Arguments]    ${product}
    ${ProductAddedXpath}=    getProductAddedToWishlistXpath    ${product}
    Wait For Elements State    ${ProductAddedXpath}    state=visible

Wishlist Counter Should Be
    [Arguments]    ${Count}
    ${WishlistCounterXpath}=    getWishlistCounterXpath
    ${WishlistCounter}=    Get Text    ${WishlistCounterXpath}
    Should Be Equal    ${WishlistCounter}    ${Count}

Add product to the wishlist by the position
    [Arguments]    ${position}
    ${AddProductToWishlistByPosition}=    getAddProductToWishlistByPosition    ${position}
    Click    ${AddProductToWishlistByPosition}
    Product Should Be Added to Wishlist    ${AddProductToWishlistByPosition}
    Wishlist Counter Should Be    1
    
Go to Wishlist
    ${WishlistCounterXpath}=    getWishlistCounterXpath
    Click    ${WishlistCounterXpath}

Delete From Wishlist By Position
    [Arguments]    ${position}
    ${DeleteFromWishlistByPositionXpath}=     getDeleteFromWishlistByPositionXpath    ${position}
    Click    ${DeleteFromWishlistByPositionXpath}

Wishlist Should Be Empty
    ${WishlistIsEmpty}=    getWishlistIsEmpty
    Wait For Elements State    ${WishlistIsEmpty}    state=attached
