module Ecm::NewsHelper
  def show_news(count = 1, category_identifiers = [])
    if category_identifiers.empty?
      return ::News.newest(count)
    else
      news_category_ids = ::NewsCategory.where(:identifier => category_identifiers).map(&:id)
      return ::News.take(count).where(:category_id => news_category_ids).where("publish_at < ?", Time.now).order("publish_at DESC").all
    end
  end
  
  def news_preview_box(position, count = 1)
    return unless news_position = NewsPosition.find_by_identifier(position)
    news = news_position.news.take(count)
    render :partial => "news/news_preview", :collection => @news, :as => :news
  end
  
end
