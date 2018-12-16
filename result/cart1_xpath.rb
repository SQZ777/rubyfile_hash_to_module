module CART1_XPATH
  def product_image
	  '//*[@resource-id="%s/item_image"]'
  end

  def action_back
	  '//android.widget.ImageButton[@content-desc="向上瀏覽"]'
  end

end
