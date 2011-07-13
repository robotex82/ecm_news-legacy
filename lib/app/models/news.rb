class News < ActiveRecord::Base
  validates :title, :presence => true, :length => { :minimum => 5, :maximum => 255 }
  validates :body, :presence => true
  
  def label
    title
  end
end
