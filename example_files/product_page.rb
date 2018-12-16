require_relative '../../../common/page_definitions/def_product_page.rb'
require_relative '../../../common/common_method/common_actions.rb'
# Android member page
class ProductPage < BasePage
  include DefProductPage
  PRODUCT_XPATH = {
    toast_message: '//*[@text="加入成功"]',
    add_to_collection_btn: '//*[@resource-id="%s/viewholder_product_pager_FavoritePopBox"]',
    product_first_spec_btn: '//android.view.ViewGroup/android.widget.Button[1]',
    add_to_cart_product_btn: '//*[@resource-id="%s/product_salepage_add_shoppingcart_btn"]',
    add_to_cart_spec_btn: '//*[@resource-id="%s/layout_product_sku_confirm_btn"]',
    checkout_immediately_btn: '//*[@resource-id="%s/product_salepage_buynow_btn"]',
    checkout_immediately_spec_btn: '//*[@resource-id="%s/layout_product_sku_confirm_btn"]',
    check_shipping_txt: '//android.widget.TextView[contains(@text,"%s")]',
    check_shipping_fee_txt: '//android.widget.TextView[contains(@text,%s)]',
    action_search: '//android.widget.ImageButton[@resource-id="%s/action_search"]',
    action_back: '//android.widget.ImageButton[@content-desc="向上瀏覽"]',
    check_lets_see_btn: '//android.widget.Button[@resource-id="android:id/button2" and @text="不用了"]',
    product_tab_left_tab: '//android.widget.TextView[@resource-id="%s/layout_product_tab_left_tab_textview"]',
    webview_zoom_btn: '//android.widget.ImageView[@resource-id="%s/fragment_product_second_screen_webview_zoom_image"]',
    alert_title: '//android.widget.TextView[@resource-id="android:id/alertTitle" and @text="資料處理中…"]',
    add_item_btn: '//*[@resource-id="%s/addcart_btn_qty_plus"]',
    product_status_label: '//*[@resource-id="%s/viewholder_product_pager_exclude_ecoupon_textview"]',
    above_tag: '//*[@resource-id="%s/viewholder_product_delivery_free_shipping_text_textview"]',
    right_tag: '//android.widget.TextView[@resource-id="%s/viewholder_product_delivery_free_shipping_text_textview" and @text="%s"]',
    product_sold_amount: '//android.widget.TextView[@resource-id="%s/viewholder_product_sold_amount_textview"]',
    purchaser_list: '//android.widget.TextView[@resource-id="%s/viewholder_product_pager_buyer_list_textview"]',
    purchaser_list_is_empty_text: '//android.view.View[@text="誰將成為購買成功的幸運兒!"]',
    purchaser_list_is_empty_subtitle: '//android.view.View[@text="(目前尚無購買名單)"]',
    number_of_activities: '//android.widget.TextView[@text="看更多"]',
    first_activity: '(//android.widget.TextView[@resource-id="%s/tv_product_activity_viewholder_event_name"])[1]',
    sale_notice_btn: '//android.widget.Button[@resource-id="%s/product_salepage_allstatus_btn" and @text="商品開賣時通知我"]',
    sold_out_btn: '//android.widget.Button[@resource-id="%s/product_salepage_allstatus_btn" and @text="已售完，補貨中"]',
    fb_share_btn: '//android.widget.Button[@resource-id="%s/product_salepage_allstatus_btn" and @content-desc="FB分享本商品即可購買"]',
    fb_alert_message: '//android.widget.TextView[@resource-id="android:id/alertTitle" and @text="分享商品至FB獲得購買資格"]',
    fb_alert_confirm: '//android.widget.Button[@resource-id="android:id/button1" and @text="立即分享"]',
    fb_alert_cancel: '//android.widget.Button[@resource-id="android:id/button2" and @text="取消"]',
    play_video_btn: '//android.widget.TextView[@resource-id="%s/layout_product_youtube_textview"]',
    pay_title: '//android.widget.TextView[@text="%s"]',
    tag_text: '//android.widget.TextView[@text="%s"]',
    book_prompt: '//android.widget.TextView[@resource-id="%s/viewholder_product_pager_shipping_info_textview"]',
    customization: '//android.widget.TextView[@resource-id="%s/viewholder_product_pager_shipping_info_textview" and @text="本商品為特殊商品，付款後店家會與您約定送貨時間"]',
    sku_text_btn: '//android.widget.Button[@text="%s"]',
    per_order: '//android.widget.TextView[@resource-id="%s/viewholder_product_pager_shipping_info_textview"]',
    pull_up_textview: '//android.widget.TextView[@resource-id="%s/viewholder_product_please_pull_up_textview"]'
  }.freeze

  PRODUCT_CHECK_XPATH = {
    product_image: '//*[@resource-id="%s/gallery_item_image"]',
    product_large_picture_pager: '//*[@resource-id="%s/large_picture_pager"]',
    product_name: '//*[@resource-id="%s/viewholder_product_pager_title_textview"]',
    product_price: '//*[@resource-id="%s/layout_product_price_price_textview"]',
    product_suggest_price: '//*[@resource-id="%s/layout_product_price_suggest_price_textview"]',
    product_options: '//*[@resource-id="%s/viewholder_product_sku_title_textview"]',
    product_activity: '//*[@text="本商品適用活動"]',
    product_payment_shipping: '//*[@resource-id="%s/viewholder_product_delivery_shipping_title_textview"]',
    product_ad: '//android.support.v7.widget.RecyclerView/android.widget.TextView[1]',
    product_feature: '//*[@resource-id="%s/viewholder_product_dotted_textview"]',
    product_detail_tab: '//*[@resource-id="%s/layout_product_tab_left_tab_textview"]',
    product_info_tab: '//*[@resource-id="%s/layout_product_tab_middle_tab_textview"]',
    product_recommend_tab: '//*[@resource-id="%s/layout_product_tab_right_tab_textview"]',
    product_detail_section: '//*[@class="android.webkit.WebView"]',
    product_no: '//android.support.v7.widget.RecyclerView/android.widget.TextView[2]',
    product_sale_point: '//*[@resource-id="%s/layout_dotted_textview_label_textview"]',
    product_spec: '//android.support.v7.widget.RecyclerView/android.widget.TextView[4]',
    product_category: '//android.widget.LinearLayout[2]/android.widget.LinearLayout[1]',
    product_hot: '//*[@resource-id="%s/viewholder_product_hotsale_section_title_textview"]',
    product_info_title: '//android.widget.TextView[@text="商品編號"]',
    product_top_btn: '//android.widget.ImageView[@resource-id="%s/fragment_product_second_screen_goto_top_imageview"]',
    product_zoom_btn: '//android.widget.ImageView[@resource-id="%s/fragment_product_second_screen_webview_zoom_image"]',
    product_favorite: '//android.widget.FrameLayout[@resource-id="%s/viewholder_product_pager_FavoritePopBox"]',
    product_add_to_cart_product_btn: '//*[@resource-id="%s/product_salepage_add_shoppingcart_btn"]',
    product_checkout_immediately_btn: '//*[@resource-id="%s/product_salepage_buynow_btn"]'
  }.freeze

  PRODUCT_ELEMENT = {
    product_image: '商品主圖',
    product_name: '商品名稱',
    product_price: '商品價格',
    product_suggest_price: '商品建議售價',
    product_options: '商品選項區',
    product_activity: '適用活動區',
    product_payment_shipping: '付款運送方式',
    product_ad: '商品頁文字廣告',
    product_feature: '商品特色',
    product_top_btn: 'Top',
    product_zoom_btn: '放大鏡',
    product_favorite: '加入收藏',
    product_add_to_cart_product_btn: '加入購物車',
    product_checkout_immediately_btn: '立即結帳'
  }.freeze

  BASIC_SECTION_EXPECTED_RESULT = {
    product_image: '商品主圖',
    product_name: '商品名稱',
    product_price: '商品價格',
    product_suggest_price: '商品建議售價',
    product_options: '商品選項區',
    product_activity: '適用活動區',
    product_payment_shipping: '付款運送方式',
    product_ad: '商品頁文字廣告',
    product_feature: '商品特色'
  }.freeze

  DETAIL_SECTION_EXPECTED_RESULT = {
    product_detail_tab: '詳細說明tab',
    product_info_tab: '商品資訊tab',
    product_recommend_tab: '推薦商品tab',
    product_detail_section: '詳細說明區',
    product_no: '商品編號',
    product_sale_point: '銷售重點',
    product_spec: '商品規格',
    product_category: '分類樹',
    product_hot: '本店相關熱賣商品'
  }.freeze

  WEB_VIEW_DETAIL_CONTENT_XPATH = {
    landing_content: '//*[@text="%s"]'
  }.freeze

  DESCRIPTION_PAGE = {
    description_page_title: '//android.widget.TextView[@text="詳細說明"]',
    back_action: '//android.widget.ImageButton[@content-desc="向上瀏覽"]',
    zoomin: '//android.widget.ImageButton[@resource-id="%s/id_imgbtn_scale_zoomin"]',
    zoomout: '//android.widget.ImageButton[@resource-id="%s/id_imgbtn_scale_zoomout"]',
    youtube_player: '//android.view.View[@resource-id="ytplayer"]'
  }.freeze

  CART1_XPATH = {
    product_image: '//*[@resource-id="%s/item_image"]',
    action_back: '//android.widget.ImageButton[@content-desc="向上瀏覽"]'
  }.freeze

  ECOUPON_DETAIL_PAGE = {
    coupon_type_text: '//android.widget.TextView[@resource-id="%s/coupon_list_item_price"]'
  }.freeze

  FACEBOOK_LOGIN_PAGE = {
    password_input: '//android.widget.EditText[@resource-id="m_login_password"]',
    done_btn: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ImageView'
  }.freeze

  FULL_SCREEN = {
    player_video_title_view: '//android.widget.TextView[@resource-id="com.google.android.youtube:id/player_video_title_view"]',
    done: 'Done'
  }.freeze

  PURCHASER_LIST_PAGE = {
    page_title: '//android.widget.TextView[@text="購買成功名單"]',
    purchase_success: '//android.view.View[@text="2017/11/02 15:33:19訂購成功"]'
  }.freeze

  def initialize
    @layout_package = "com.nineyi.shop.s#{$shop_id}:id"
    @me_xpath = {
      product_image: PRODUCT_CHECK_XPATH[:product_price] % @layout_package
    }
  end

  def go_to_product_basic_info_implement
    swipe_up_to_check(PRODUCT_CHECK_XPATH[:product_image] % @layout_package)
  end

  def go_to_product_detail_info_implement
    swipe_up_to_check(PRODUCT_CHECK_XPATH[:product_detail_tab] % @layout_package)
  end

  def go_to_product_payment_shipping_info_implement
    swipe_up_to_check(PRODUCT_CHECK_XPATH[:product_payment_shipping] % @layout_package)
  end

  def check_product_basic_info_implement
    BASIC_SECTION_EXPECTED_RESULT.each do |key, value|
      raise "#{value}比對錯誤" unless swipe_up_to_check(PRODUCT_CHECK_XPATH[key] % @layout_package)
      puts "#{value}對比成功"
    end
  end

  def check_product_detail_info_implement
    DETAIL_SECTION_EXPECTED_RESULT.each do |key, value|
      raise "#{value}比對錯誤" unless swipe_up_to_check(PRODUCT_CHECK_XPATH[key] % @layout_package)
      puts "#{value}對比成功"
    end
  end

  def add_to_collection_implement
    click(:xpath, PRODUCT_XPATH[:add_to_collection_btn] % @layout_package)
  end

  def cancel_collection_implement
    click(:xpath, PRODUCT_XPATH[:add_to_collection_btn] % @layout_package)
  end

  def check_add_to_collection_implement
    wait_find_element(".//*[contains(@text,'加入收藏成功')]", 3)
    toast_message_size = get_element_size(".//*[contains(@text,'加入收藏成功')]")
    raise "#{toast_message_size} 動作失敗" unless toast_message_size == 1
  end

  def check_cancel_collection_implement
    wait_find_element(".//*[contains(@text,'取消收藏')]", 3)
    toast_message_size = get_element_size(".//*[contains(@text,'取消收藏')]")
    raise "#{toast_message_size} 動作失敗" unless toast_message_size == 1
  end

  def click_action_search_implement
    click(:xpath, PRODUCT_XPATH[:action_search] % @layout_package)
  end

  def click_product_spec_implement
    swipe_up_to_check(PRODUCT_CHECK_XPATH[:product_options] % @layout_package)
    click(:xpath, PRODUCT_CHECK_XPATH[:product_options] % @layout_package)
  end

  def click_product_payment_shipping_implement
    click(:xpath, PRODUCT_CHECK_XPATH[:product_payment_shipping] % @layout_package)
  end

  def choose_first_sku_implement
    wait_for_loading_disappear
    click(:xpath, PRODUCT_XPATH[:product_first_spec_btn] % @layout_package)
  end

  def add_to_cart_implement
    click(:xpath, PRODUCT_XPATH[:add_to_cart_product_btn] % @layout_package)
  end

  def add_to_cart_from_spec_implement
    click(:xpath, PRODUCT_XPATH[:add_to_cart_spec_btn] % @layout_package)
    sleep 1
  end

  def checkout_immediately_implement
    wait_for_element_to_display(:xpath, PRODUCT_XPATH[:checkout_immediately_btn] % @layout_package, 10)
    click(:xpath, PRODUCT_XPATH[:checkout_immediately_btn] % @layout_package)
    alert_title_size = get_element_size(PRODUCT_XPATH[:alert_title])
    count = 0
    while alert_title_size > 0 && count < 3
      sleep 2
      alert_title_size = get_element_size(PRODUCT_XPATH[:alert_title])
      count += 1
      raise '超過Retry次數' if count > 3
    end
    begin
      wait_for_element_to_display(:xpath, CART1_XPATH[:product_image] % @layout_package, 5)
    rescue
      return if is_element_displayed(:xpath, '//*[@resource-id="%s/id_et_input"]' % @layout_package)
      return if is_element_displayed(:xpath, PRODUCT_XPATH[:product_first_spec_btn] % @layout_package)
      rerun = 0
      until is_element_displayed(:xpath, CART1_XPATH[:product_image] % @layout_package) && rerun > 3
        sleep 2
        is_element_displayed(:xpath, CART1_XPATH[:product_image] % @layout_package)
        rerun += 1
        raise '超過Retry次數' if rerun > 3
        if rerun > 0 && rerun < 3
          click(:xpath, CART1_XPATH[:action_back])
          wait_find_element(PRODUCT_XPATH[:checkout_immediately_btn] % @layout_package, 10)
          click(:xpath, PRODUCT_XPATH[:checkout_immediately_btn] % @layout_package)
        end
      end
    end
  end

  def checkout_immediately_from_spec_implement
    click(:xpath, PRODUCT_XPATH[:checkout_immediately_spec_btn] % @layout_package)
  end

  def verify_message_implement(message)
    wait_find_element(".//*[contains(@text,'#{message}')]", 3)
    message_size = get_element_size(".//*[contains(@text,'#{message}')]")
    raise "#{message} 動作失敗" unless message_size == 1
  end

  def check_shipping_method_implement(shipping_method)
    expected_text = shipping_method.split('、').map { |s| s }
    puts "商品頁應該顯示運送方式: #{expected_text}"
    expected_text.each do |value|
    swipe_up_to_check(PRODUCT_XPATH[:check_shipping_txt] % value)
    shipping_method_display = is_element_displayed(:xpath, PRODUCT_XPATH[:check_shipping_txt] % value)
    raise '運送方式對比錯誤' unless shipping_method_display
    end
  end

  def check_shipping_fee_implement(shipping_fee)
    puts shipping_fee
  end

  def scroll_to_product_page_detail_implement
    swipe_up_to_check(PRODUCT_XPATH[:product_tab_left_tab] % @layout_package)
  end

  def click_product_page_detail_zoom_btn_implement
    wait_find_element(PRODUCT_XPATH[:webview_zoom_btn] % @layout_package, 5)
    click(:xpath, PRODUCT_XPATH[:webview_zoom_btn] % @layout_package)
  end

  def click_product_page_detail_link_implement(link)
    wait_find_element(WEB_VIEW_DETAIL_CONTENT_XPATH[:landing_content] % link, 5)
    click(:xpath, WEB_VIEW_DETAIL_CONTENT_XPATH[:landing_content] % link)
  end

  def add_item_from_spec_implement(qty)
    click_count = qty.to_i - 1
    click_count.times do
      click(:xpath, PRODUCT_XPATH[:add_item_btn] % @layout_package)
    end
  end

  def back_to_previous_page_implement
    wait_for_element_to_display(:xpath, PRODUCT_XPATH[:action_back], 10)
    click(:xpath, PRODUCT_XPATH[:action_back])
    sleep 1
  end

  def click_product_image_implement
    wait_find_element(PRODUCT_CHECK_XPATH[:product_image] % @layout_package, 5)
    click(:xpath, PRODUCT_CHECK_XPATH[:product_image] % @layout_package)
  end

  def check_full_screen_mode_implement(check_action)
    result = ''
    case check_action
    when '是'
      wait_find_element(PRODUCT_CHECK_XPATH[:product_large_picture_pager] % @layout_package, 5)
      is_full_screen = get_element_size(PRODUCT_CHECK_XPATH[:product_large_picture_pager] % @layout_package)
      result = is_full_screen == 1
    when '否'
      is_full_screen = get_id_element_size(PRODUCT_CHECK_XPATH[:product_large_picture_pager] % @layout_package)
      result = is_full_screen.zero?
    end
    raise "#{check_action}全螢幕模式有錯誤" unless result
  end

  def click_full_screen_image_implement
    wait_find_element(PRODUCT_CHECK_XPATH[:product_large_picture_pager] % @layout_package, 5)
    click(:xpath, PRODUCT_CHECK_XPATH[:product_large_picture_pager] % @layout_package)
  end

  def check_meet_the_ecoupon_icon_and_text_exit_implement(check_action)
    sale_page_coupon_text_count = get_element_size(PRODUCT_XPATH[:product_status_label] % @layout_package)
    (raise '不適用折價券顯示錯誤' unless sale_page_coupon_text_count >= 1) if check_action.eql?'顯示'
    (raise '不適用折價券顯示錯誤' unless sale_page_coupon_text_count.zero?) if check_action.eql?'不顯示'
  end

  def scroll_to_salepage_tab_implement
    swipe_up_to_check(PRODUCT_XPATH[:product_tab_left_tab] % @layout_package)
    click(:xpath, PRODUCT_XPATH[:product_tab_left_tab] % @layout_package)
  end

  def click_magnifier_implement
    sleep 2
    wait_for_element_to_display(:xpath, PRODUCT_XPATH[:webview_zoom_btn] % @layout_package, 10)
    click(:xpath, PRODUCT_XPATH[:webview_zoom_btn] % @layout_package)
  end

  def check_description_page_exist_implement
    wait_find_element(DESCRIPTION_PAGE[:description_page_title], 10)
    raise '進入詳細說明頁有誤' unless is_element_displayed(:xpath, DESCRIPTION_PAGE[:description_page_title])
  end

  def check_exit_description_page_implement
    wait_find_element(DESCRIPTION_PAGE[:back_action], 5)
    click(:xpath, DESCRIPTION_PAGE[:back_action])
    wait_find_element(PRODUCT_XPATH[:product_tab_left_tab] % @layout_package, 5)
    raise '離開詳細說明頁有誤' unless get_element_size(PRODUCT_XPATH[:product_tab_left_tab] % @layout_package) >= 1
  end

  def scroll_to_sale_tag_implement

    swipe_up_to_check(PRODUCT_XPATH[:pull_up_textview] % @layout_package)
    # element = $driver.find_element(:xpath, PRODUCT_CHECK_XPATH[:product_name] % @layout_package)
    # x = element.location.x
    # y = element.location.y
    # swipe_up_to_show_tag(x, y)
  end

  def check_above_tag_exist_implement(expect_above_tag_text)
    wait_for_element_to_display(:xpath, PRODUCT_XPATH[:above_tag] % @layout_package, 10)
    actual_text = get_element_text(:xpath, PRODUCT_XPATH[:above_tag] % @layout_package)
    p actual_text
    raise "免運訊息出現錯誤，實際結果：\"#{actual_text}\", 預期結果：\"#{expect_above_tag_text}\"" unless actual_text == expect_above_tag_text
  end

  def check_right_tag_exist_implement(tag_text)
    raise '付款運送方式右方tag顯示錯誤' unless is_element_displayed(:xpath, PRODUCT_XPATH[:right_tag] % [@layout_package, tag_text])
  end

  def check_sell_quantity_exist_implement(check_action)
    (raise '顯示賣出數量顯示錯誤' unless is_element_displayed(:xpath, PRODUCT_XPATH[:product_sold_amount] % @layout_package)) if check_action.eql?'顯示'
    (raise '不顯示賣出數量顯示錯誤' if is_element_displayed(:xpath, PRODUCT_XPATH[:product_sold_amount] % @layout_package)) if check_action.eql?'不顯示'
  end

  def check_purchaser_list_exist_implement(check_action)
    size = $driver.window_size()
    start_y = size['height'] * 0.4
    end_y = size['height'] * 0.2
    start_x = end_x = size['width'] / 2
    swipe(start_x, start_y, end_x, end_y)
    (raise '顯示購買名單錯誤' unless is_element_displayed(:xpath, PRODUCT_XPATH[:purchaser_list] % @layout_package)) if check_action.eql?'顯示'
    (raise '不顯示購買名單錯誤' if is_element_displayed(:xpath, PRODUCT_XPATH[:purchaser_list] % @layout_package)) if check_action.eql?'不顯示'
  end

  def click_purchaser_list_implement
    wait_find_element(PRODUCT_CHECK_XPATH[:product_name] % @layout_package, 5)
    size = $driver.window_size()
    start_y = size['height'] * 0.4
    end_y = size['height'] * 0.2
    start_x = end_x = size['width'] / 2
    swipe(start_x, start_y, end_x, end_y)
    wait_find_element(PRODUCT_XPATH[:purchaser_list] % @layout_package, 5)
    click(:xpath, PRODUCT_XPATH[:purchaser_list] % @layout_package)
  end

  def check_purchaser_list_is_empty_implement
    wait_find_element(PRODUCT_XPATH[:purchaser_list_is_empty_text], 20)
    raise '誰將成為購買成功的幸運兒!顯示錯誤' unless is_element_displayed(:xpath, PRODUCT_XPATH[:purchaser_list_is_empty_text])
    raise '(目前尚無購買名單)顯示錯誤' unless is_element_displayed(:xpath, PRODUCT_XPATH[:purchaser_list_is_empty_subtitle])
  end

  def click_sale_tab_implement(tab)
    @topping_y = 210
    case tab
    when '詳細說明'
      click(:xpath, PRODUCT_CHECK_XPATH[:product_detail_tab] % @layout_package)
      sleep 2
      element_y = $driver.find_element(:xpath, PRODUCT_CHECK_XPATH[:product_detail_tab] % @layout_package).location.y
      puts "top: #{element_y}"
      raise 'tab置頂有誤' unless element_y.to_i == @topping_y
    when '商品資訊'
      click(:xpath, PRODUCT_CHECK_XPATH[:product_info_tab] % @layout_package)
      sleep 2
      element_y = $driver.find_element(:xpath, PRODUCT_CHECK_XPATH[:product_info_tab] % @layout_package).location.y
      raise 'tab置頂有誤' unless element_y.to_i == @topping_y
    when '推薦商品'
      click(:xpath, PRODUCT_CHECK_XPATH[:product_recommend_tab] % @layout_package)
      sleep 2
      element_y = $driver.find_element(:xpath, PRODUCT_CHECK_XPATH[:product_recommend_tab] % @layout_package).location.y
      raise 'tab置頂有誤' unless element_y.to_i == @topping_y
    end
  end

  def check_sale_tab_rule_display_verify_implement(verify)
    case verify
    when '放大鏡驗證'
      wait_find_element(PRODUCT_XPATH[:webview_zoom_btn] % @layout_package, 10)
      raise '放大鏡顯示錯誤' unless get_element_size(PRODUCT_XPATH[:webview_zoom_btn] % @layout_package) >= 1
    when '商品資訊驗證'
      info_tab_y = $driver.find_element(:xpath, PRODUCT_CHECK_XPATH[:product_info_tab] % @layout_package).location.y.to_i
      info_title_y = $driver.find_element(:xpath, PRODUCT_CHECK_XPATH[:product_info_title]).location.y.to_i
      raise '商品資訊顯示錯誤' unless (info_title_y - info_tab_y) == 126
    when '相關熱賣商品區驗證'
      related_tab_y = $driver.find_element(:xpath, PRODUCT_CHECK_XPATH[:product_recommend_tab] % @layout_package).location.y.to_i
      detail_label_y = $driver.find_element(:xpath, PRODUCT_CHECK_XPATH[:product_hot] % @layout_package).location.y.to_i
      raise '相關熱賣商品區顯示錯誤' unless (detail_label_y - related_tab_y) == 126
      raise '本店相關熱賣商品顯示錯誤' unless is_element_displayed(:xpath, PRODUCT_CHECK_XPATH[:product_hot] % @layout_package)
    end
  end

  def check_number_of_activities_exist_implement
    swipe_up
    raise '符合活動比數顯示錯誤' unless get_element_size('//*[@resource-id="%s/layout_product_small_tag_textview_textview"]' % @layout_package) >= 1
    # raise '符合活動比數顯示錯誤' unless get_element_size(PRODUCT_XPATH[:number_of_activities] % @layout_package) >= 1
  end

  def check_logistics_and_icon_exist_implement
    icon_size = '//android.widget.LinearLayout/android.widget.ImageView'
    swipe_up_to_check(PRODUCT_CHECK_XPATH[:product_payment_shipping] % @layout_package)
    raise '運送方式icon顯示錯誤' unless get_element_size(icon_size) >= 4
  end

  def click_product_activity_implement
    wait_find_element(PRODUCT_XPATH[:number_of_activities] % @layout_package, 10)
    click(:xpath, PRODUCT_XPATH[:number_of_activities] % @layout_package)
  end

  def click_first_activity_implement
    wait_find_element(PRODUCT_XPATH[:first_activity] % @layout_package, 5)
    click(:xpath, PRODUCT_XPATH[:first_activity] % @layout_package)
  end

  def check_salepage_to_ecoupon_detailpage_implement
    wait_find_element(ECOUPON_DETAIL_PAGE[:coupon_type_text] % @layout_package, 5)
    raise '折價券顯示錯誤' unless is_element_displayed(:xpath, ECOUPON_DETAIL_PAGE[:coupon_type_text] % @layout_package)
  end

  def check_action_btn_exist_implement(action_btn)
    case action_btn
    when '加入購物車'
      wait_find_element(PRODUCT_XPATH[:add_to_cart_product_btn] % @layout_package, 10)
      raise '加入購物車按鈕顯示錯誤' unless get_element_size(PRODUCT_XPATH[:add_to_cart_product_btn] % @layout_package) >= 1
    when '立即結帳'
      wait_find_element(PRODUCT_XPATH[:checkout_immediately_btn] % @layout_package, 10)
      raise '立即結帳按鈕顯示錯誤' unless get_element_size(PRODUCT_XPATH[:checkout_immediately_btn] % @layout_package) >= 1
    when '已售完，補貨中'
      wait_find_element(PRODUCT_XPATH[:sold_out_btn] % @layout_package, 10)
      raise '已售完，補貨中按鈕顯示錯誤' unless get_element_size(PRODUCT_XPATH[:sold_out_btn] % @layout_package) >= 1
    when '商品開賣時通知我'
      wait_find_element(PRODUCT_XPATH[:sale_notice_btn] % @layout_package, 10)
      raise '商品開賣時通知我按鈕顯示錯誤' unless get_element_size(PRODUCT_XPATH[:sale_notice_btn] % @layout_package) >= 1
    when 'FB分享本商品即可購買'
      wait_find_element(PRODUCT_XPATH[:fb_share_btn] % @layout_package, 5)
      raise 'FB分享購買商品按鈕顯示錯誤' unless get_element_size(PRODUCT_XPATH[:fb_share_btn] % @layout_package) >= 1
    end
  end

  def click_action_btn_implement(action_btn)
    case action_btn
    when '已售完，補貨中'
      puts '已售完，補貨中'
    when '商品開賣時通知我'
      puts '商品開賣時通知我'
    when 'FB分享本商品即可購買'
      wait_find_element(PRODUCT_XPATH[:fb_share_btn] % @layout_package, 5)
      click(:xpath, PRODUCT_XPATH[:fb_share_btn] % @layout_package)
    when '點我看影片'
      wait_find_element(PRODUCT_XPATH[:play_video_btn] % @layout_package, 10)
      click(:xpath, PRODUCT_XPATH[:play_video_btn] % @layout_package)
    when 'XS'
      wait_for_element_to_display(:xpath, PRODUCT_XPATH[:sku_text_btn] % action_btn, 10)
      click(:xpath, PRODUCT_XPATH[:sku_text_btn] % action_btn)
    else
      element_key = PRODUCT_ELEMENT.key(action_btn)
      wait_find_element(PRODUCT_CHECK_XPATH[element_key] % @layout_package, 10)
      click(:xpath, PRODUCT_CHECK_XPATH[element_key] % @layout_package)
    end
  end

  def check_fb_alert_message_exist_implement
    wait_find_element(PRODUCT_XPATH[:fb_alert_message], 5)
    raise 'FB分享後購買訊息顯示錯誤' unless is_element_displayed(:xpath, PRODUCT_XPATH[:fb_alert_message])
    raise 'FB分享後購買按鈕“立即分享”顯示錯誤' unless is_element_displayed(:xpath, PRODUCT_XPATH[:fb_alert_confirm])
    raise 'FB分享後購買按鈕“取消”顯示錯誤' unless is_element_displayed(:xpath, PRODUCT_XPATH[:fb_alert_cancel])
  end

  def click_fb_alert_message_btn_implement(alert_btn)
    wait_find_element(PRODUCT_XPATH[:fb_alert_message], 5)
    wait_find_element(PRODUCT_XPATH[:fb_alert_confirm], 5) if alert_btn.eql?'立即分享'
    click(:xpath, PRODUCT_XPATH[:fb_alert_confirm]) if alert_btn.eql?'立即分享'
    wait_find_element(PRODUCT_XPATH[:fb_alert_cancel], 5) if alert_btn.eql?'取消'
    click(:xpath, PRODUCT_XPATH[:fb_alert_cancel]) if alert_btn.eql?'取消'
  end

  def check_fb_login_page_exist_implement
    wait_find_element(FACEBOOK_LOGIN_PAGE[:password_input], 20)
    raise 'FB登入頁載入錯誤' unless get_element_size(FACEBOOK_LOGIN_PAGE[:password_input]) >= 1
  end

  def quit_fb_login_page_implement
    wait_find_element(FACEBOOK_LOGIN_PAGE[:done_btn], 20)
    click(:xpath, FACEBOOK_LOGIN_PAGE[:done_btn])
  end

  def check_play_full_screen_video_implement
    wait_find_element(FULL_SCREEN[:player_video_title_view], 10)
    raise '全螢幕播放錯誤' unless get_element_size(FULL_SCREEN[:player_video_title_view]) >= 1
    $driver.press_keycode(4)#back_keycode
  end

  def check_purchase_success_page_exist_implement
    wait_find_element(PURCHASER_LIST_PAGE[:page_title], 10)
    raise '載入購買名單頁錯誤' unless  is_element_displayed(:xpath, PURCHASER_LIST_PAGE[:page_title])
    raise '載入購買名單頁錯誤' unless  get_element_size(PURCHASER_LIST_PAGE[:purchase_success]) >= 1
  end

  def check_payment_shipping_exist_implement
    swipe_up_to_check(PRODUCT_CHECK_XPATH[:product_payment_shipping] % @layout_package)
  end

  def click_logistics_and_payments_implement
    wait_find_element(PRODUCT_CHECK_XPATH[:product_payment_shipping] % @layout_package, 10)
    click(:xpath, PRODUCT_CHECK_XPATH[:product_payment_shipping] % @layout_package)
  end

  def check_installment_plan_implement
    installment_plan = ['3 期0利率 ,每期 $33', '6 期0利率 ,每期 $16', '12 期0利率 ,每期 $8', '24 期0利率 ,每期 $4']
    installment_plan.size.times do |x|
      wait_find_element(PRODUCT_XPATH[:pay_title] % installment_plan[x], 10)
      raise "#{installment_plan[x]}顯示錯誤" unless is_element_displayed(:xpath, PRODUCT_XPATH[:pay_title] % installment_plan[x])
    end
  end

  def check_no_exist_anything_tag_implement
    tag_array = %w[買就送 超取免運費 超取滿1,000元免運 超取免運費 超取滿1,000元免運 貨到付款免運費 貨到付款滿1,000元免運 宅配免運費 宅配滿1,000元免運]
    tag_array.size.times do |x|
      raise "#{tag_array[x]}顯示錯誤" unless get_element_size(PRODUCT_XPATH[:tag_text] % tag_array[x])
      puts "未看到#{tag_array[x]}tag"
    end
  end

  def check_delivery_period_exist_implement(delivery_period)
    size = $driver.window_size()
    start_y = size['height'] * 0.4
    end_y = size['height'] * 0.2
    start_x = end_x = size['width'] / 2
    swipe(start_x, start_y, end_x, end_y)
    case delivery_period
    when '訂製'
      wait_find_element(PRODUCT_XPATH[:book_prompt] % @layout_package, 10)
      shipping_info_text = get_element_text(:xpath, PRODUCT_XPATH[:book_prompt] % @layout_package)
      expect_text = "信用卡：付款完成後 3 個工作天出貨\n超商：訂購完成後 3 個工作天出貨"
      raise '訂製說明顯示錯誤' unless shipping_info_text == expect_text
    when '客製'
      wait_find_element(PRODUCT_XPATH[:customization] % @layout_package, 10)
      raise '客製說明顯示錯誤' unless is_element_displayed(:xpath, PRODUCT_XPATH[:customization] % @layout_package)
    when '預購'
      wait_find_element(PRODUCT_XPATH[:per_order] % @layout_package, 10)
      shipping_info_text = get_element_text(:xpath, PRODUCT_XPATH[:per_order] % @layout_package)
      expect_text = "信用卡：付款完成後 9 個工作天出貨\n超商：訂購完成後 9 個工作天出貨"
      raise '說明顯示錯誤' unless shipping_info_text == expect_text
    end
  end

  def check_product_options_exist_implemnt(whether)
    swipe_up
    wait_find_element(PRODUCT_CHECK_XPATH[:product_options] % @layout_package, 10) if whether.eql?'有'
    (raise 'sku顯示錯誤' unless is_element_displayed(:xpath, PRODUCT_CHECK_XPATH[:product_options] % @layout_package)) if whether.eql?'有'
    (raise 'sku顯示錯誤' unless get_element_size(PRODUCT_CHECK_XPATH[:product_options] % @layout_package).zero?) if whether.eql?'無'
  end

  def check_product_name_exist_implement(product_name)
    wait_find_element(PRODUCT_CHECK_XPATH[:product_name] % @layout_package, 10)
    long_name = get_element_text(:xpath, PRODUCT_CHECK_XPATH[:product_name] % @layout_package)
    raise '商品名稱顯示錯誤' unless product_name.eql?long_name
  end

  def check_product_element_exist_implement(value_key)
    element_key = PRODUCT_ELEMENT.key(value_key)
    raise '顯示錯誤' unless wait_find_element(PRODUCT_CHECK_XPATH[element_key] % @layout_package, 10)
  end

  def check_webview_video_exist_implement
    wait_find_element(DESCRIPTION_PAGE[:youtube_player], 10)
    video_element = $driver.find_element(:xpath, DESCRIPTION_PAGE[:youtube_player])
    raise '播放影片(不切換全畫面_寬)顯示有誤' unless video_element.size.width.eql? 787
    raise '播放影片(不切換全畫面_高)顯示有誤' unless video_element.size.height.eql? 393
  end

  def check_webview_zoomin_and_zoomout_exist_implement
    raise '放大按鈕+顯示錯誤' unless wait_find_element(DESCRIPTION_PAGE[:zoomin] % @layout_package, 10)
    raise '放大按鈕+顯示錯誤' unless wait_find_element(DESCRIPTION_PAGE[:zoomout] % @layout_package, 10)
  end

  def check_add_to_sku_error_message_implement
    wait_find_element(".//*[contains(@text,'請先選擇人物')]", 3)
    toast_message_size = get_element_size(".//*[contains(@text,'請先選擇人物')]")
    raise '選擇SKU錯誤' unless toast_message_size == 1
  end
end