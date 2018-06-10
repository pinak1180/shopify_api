module ShopifyAPI
  class GiftCardAdjustment < Base

    init_prefix :gift_card

    self.collection_name = "adjustments"
    self.element_name = "adjustment"
  end
end
