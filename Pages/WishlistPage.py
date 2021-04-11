class WishlistPage:
    def getAddProductToWishlistByPosition(self, pos):
        xpath = '(//div[@data-testid="generic-product"])['+pos+']//div[@data-testid="wishlist-icon"]'
        return(xpath)

    def getProductAddedToWishlistXpath(self, product):
        xpath = product+'//*[@data-is-selected="true"]'
        return(xpath)

    def getWishlistIsEmpty(self):
        xpath = '//p[contains(@class,"wishlistNoProducts__text ")]'
        return(xpath)

    def getWishlistCounterXpath(self):
        xpath = '//div[@data-testid="wishlist-bubble"]//span[contains(@class,"qa-header-wishlist-counter")]'
        return(xpath)

    def getDeleteFromWishlistByPositionXpath(self,pos):
        xpath = '(//li[contains(@class,"qaBlockListProduct")])['+pos+']//button[contains(@class,"qaBlockListProduct__delete")]'
        return(xpath)