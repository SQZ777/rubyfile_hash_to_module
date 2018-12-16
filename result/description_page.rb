module DESCRIPTION_PAGE
  def description_page_title
	  '//android.widget.TextView[@text="詳細說明"]'
  end

  def back_action
	  '//android.widget.ImageButton[@content-desc="向上瀏覽"]'
  end

  def zoomin
	  '//android.widget.ImageButton[@resource-id="%s/id_imgbtn_scale_zoomin"]'
  end

  def zoomout
	  '//android.widget.ImageButton[@resource-id="%s/id_imgbtn_scale_zoomout"]'
  end

  def youtube_player
	  '//android.view.View[@resource-id="ytplayer"]'
  end

end
