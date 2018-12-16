module PRODUCT_CHECK_XPATH
  def product_image
	  '//*[@resource-id="%s/gallery_item_image"]'
  end

  def product_large_picture_pager
	  '//*[@resource-id="%s/large_picture_pager"]'
  end

  def product_name
	  '//*[@resource-id="%s/viewholder_product_pager_title_textview"]'
  end

  def product_price
	  '//*[@resource-id="%s/layout_product_price_price_textview"]'
  end

  def product_suggest_price
	  '//*[@resource-id="%s/layout_product_price_suggest_price_textview"]'
  end

  def product_options
	  '//*[@resource-id="%s/viewholder_product_sku_title_textview"]'
  end

  def product_activity
	  '//*[@text="本商品適用活動"]'
  end

  def product_payment_shipping
	  '//*[@resource-id="%s/viewholder_product_delivery_shipping_title_textview"]'
  end

  def product_ad
	  '//android.support.v7.widget.RecyclerView/android.widget.TextView[1]'
  end

  def product_feature
	  '//*[@resource-id="%s/viewholder_product_dotted_textview"]'
  end

  def product_detail_tab
	  '//*[@resource-id="%s/layout_product_tab_left_tab_textview"]'
  end

  def product_info_tab
	  '//*[@resource-id="%s/layout_product_tab_middle_tab_textview"]'
  end

  def product_recommend_tab
	  '//*[@resource-id="%s/layout_product_tab_right_tab_textview"]'
  end

  def product_detail_section
	  '//*[@class="android.webkit.WebView"]'
  end

  def product_no
	  '//android.support.v7.widget.RecyclerView/android.widget.TextView[2]'
  end

  def product_sale_point
	  '//*[@resource-id="%s/layout_dotted_textview_label_textview"]'
  end

  def product_spec
	  '//android.support.v7.widget.RecyclerView/android.widget.TextView[4]'
  end

  def product_category
	  '//android.widget.LinearLayout[2]/android.widget.LinearLayout[1]'
  end

  def product_hot
	  '//*[@resource-id="%s/viewholder_product_hotsale_section_title_textview"]'
  end

  def product_info_title
	  '//android.widget.TextView[@text="商品編號"]'
  end

  def product_top_btn
	  '//android.widget.ImageView[@resource-id="%s/fragment_product_second_screen_goto_top_imageview"]'
  end

  def product_zoom_btn
	  '//android.widget.ImageView[@resource-id="%s/fragment_product_second_screen_webview_zoom_image"]'
  end

  def product_favorite
	  '//android.widget.FrameLayout[@resource-id="%s/viewholder_product_pager_FavoritePopBox"]'
  end

  def product_add_to_cart_product_btn
	  '//*[@resource-id="%s/product_salepage_add_shoppingcart_btn"]'
  end

  def product_checkout_immediately_btn
	  '//*[@resource-id="%s/product_salepage_buynow_btn"]'
  end

end
