class News < ActiveRecord::Base
  validates :title, :presence => true, :length => { :minimum => 5, :maximum => 255 }
  validates :body, :presence => true
  
  def body_length
    body.length
  end  
  
  def label
    title
  end
  
  def body_teaser(count = 30)
    if string.length >= count
      shortened = string[0, count]
      splitted = shortened.split(/\s/)
      words = splitted.length
      splitted[0, words-1].join(" ") + ' ...'
    else
      string
    end
  end
end
