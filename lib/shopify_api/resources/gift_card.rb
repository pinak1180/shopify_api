module ShopifyAPI
  class GiftCard < Base
    def disable
      load_attributes_from_response(post(:disable))
    end

    def retrieve_adjustments
      load_attributes_from_response(get(:adjustments))
    end

    def generate_adjustments
      load_attributes_from_response(post(:adjustments))
    end
  end
end
