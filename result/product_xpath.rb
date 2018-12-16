module PRODUCT_XPATH
  def toast_message
	  '//*[@text="加入成功"]'
  end

  def add_to_collection_btn
	  '//*[@resource-id="%s/viewholder_product_pager_FavoritePopBox"]'
  end

  def product_first_spec_btn
	  '//android.view.ViewGroup/android.widget.Button[1]'
  end

  def add_to_cart_product_btn
	  '//*[@resource-id="%s/product_salepage_add_shoppingcart_btn"]'
  end

  def add_to_cart_spec_btn
	  '//*[@resource-id="%s/layout_product_sku_confirm_btn"]'
  end

  def checkout_immediately_btn
	  '//*[@resource-id="%s/product_salepage_buynow_btn"]'
  end

  def checkout_immediately_spec_btn
	  '//*[@resource-id="%s/layout_product_sku_confirm_btn"]'
  end

  def check_shipping_txt
	  '//android.widget.TextView[contains(@text,"%s")]'
  end

  def check_shipping_fee_txt
	  '//android.widget.TextView[contains(@text,%s)]'
  end

  def action_search
	  '//android.widget.ImageButton[@resource-id="%s/action_search"]'
  end

  def action_back
	  '//android.widget.ImageButton[@content-desc="向上瀏覽"]'
  end

  def check_lets_see_btn
	  '//android.widget.Button[@resource-id="android:id/button2" and @text="不用了"]'
  end

  def product_tab_left_tab
	  '//android.widget.TextView[@resource-id="%s/layout_product_tab_left_tab_textview"]'
  end

  def webview_zoom_btn
	  '//android.widget.ImageView[@resource-id="%s/fragment_product_second_screen_webview_zoom_image"]'
  end

  def alert_title
	  '//android.widget.TextView[@resource-id="android:id/alertTitle" and @text="資料處理中…"]'
  end

  def add_item_btn
	  '//*[@resource-id="%s/addcart_btn_qty_plus"]'
  end

  def product_status_label
	  '//*[@resource-id="%s/viewholder_product_pager_exclude_ecoupon_textview"]'
  end

  def above_tag
	  '//*[@resource-id="%s/viewholder_product_delivery_free_shipping_text_textview"]'
  end

  def right_tag
	  '//android.widget.TextView[@resource-id="%s/viewholder_product_delivery_free_shipping_text_textview" and @text="%s"]'
  end

  def product_sold_amount
	  '//android.widget.TextView[@resource-id="%s/viewholder_product_sold_amount_textview"]'
  end

  def purchaser_list
	  '//android.widget.TextView[@resource-id="%s/viewholder_product_pager_buyer_list_textview"]'
  end

  def purchaser_list_is_empty_text
	  '//android.view.View[@text="誰將成為購買成功的幸運兒!"]'
  end

  def purchaser_list_is_empty_subtitle
	  '//android.view.View[@text="(目前尚無購買名單)"]'
  end

  def number_of_activities
	  '//android.widget.TextView[@text="看更多"]'
  end

  def first_activity
	  '(//android.widget.TextView[@resource-id="%s/tv_product_activity_viewholder_event_name"])[1]'
  end

  def sale_notice_btn
	  '//android.widget.Button[@resource-id="%s/product_salepage_allstatus_btn" and @text="商品開賣時通知我"]'
  end

  def sold_out_btn
	  '//android.widget.Button[@resource-id="%s/product_salepage_allstatus_btn" and @text="已售完，補貨中"]'
  end

  def fb_share_btn
	  '//android.widget.Button[@resource-id="%s/product_salepage_allstatus_btn" and @content-desc="FB分享本商品即可購買"]'
  end

  def fb_alert_message
	  '//android.widget.TextView[@resource-id="android:id/alertTitle" and @text="分享商品至FB獲得購買資格"]'
  end

  def fb_alert_confirm
	  '//android.widget.Button[@resource-id="android:id/button1" and @text="立即分享"]'
  end

  def fb_alert_cancel
	  '//android.widget.Button[@resource-id="android:id/button2" and @text="取消"]'
  end

  def play_video_btn
	  '//android.widget.TextView[@resource-id="%s/layout_product_youtube_textview"]'
  end

  def pay_title
	  '//android.widget.TextView[@text="%s"]'
  end

  def tag_text
	  '//android.widget.TextView[@text="%s"]'
  end

  def book_prompt
	  '//android.widget.TextView[@resource-id="%s/viewholder_product_pager_shipping_info_textview"]'
  end

  def customization
	  '//android.widget.TextView[@resource-id="%s/viewholder_product_pager_shipping_info_textview" and @text="本商品為特殊商品，付款後店家會與您約定送貨時間"]'
  end

  def sku_text_btn
	  '//android.widget.Button[@text="%s"]'
  end

  def per_order
	  '//android.widget.TextView[@resource-id="%s/viewholder_product_pager_shipping_info_textview"]'
  end

  def pull_up_textview
	  '//android.widget.TextView[@resource-id="%s/viewholder_product_please_pull_up_textview"]'
  end

end
