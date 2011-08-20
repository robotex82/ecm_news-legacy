class News < ActiveRecord::Base
  belongs_to :news_category
  belongs_ro :news_position
  
  validates :title, :presence => true, :length => { :minimum => 5, :maximum => 255 }
  validates :body, :presence => true
  validates :news_category_id, :presence => true
  
  def body_length
    body.length
  end  
  
  def label
    title
  end
  
  def body_teaser(count = 30)
    if body.length >= count
      shortened = body[0, count]
      splitted = shortened.split(/\s/)
      words = splitted.length
      splitted[0, words-1].join(" ") + ' ...'
    else
      body
    end
  end
  
  def self.published
    where("publish_at < ?", Time.now)
  end  
  
  def self.newest(count)
    limit(count).published.all
  end
  
  def self.newest_for_categories(count, category_identifiers)
    news_category_ids = ::NewsCategory.where(:identifier => category_identifiers).map(&:id)
    limit(count).where(:category_id => news_category_ids).published.all
  end  
end
