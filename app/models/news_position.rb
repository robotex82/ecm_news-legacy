class NewsPosition < ActiveRecord::Base
  has_many :news_categories
  has_many :news, :through => :news_categories
  validates :name, :presence => true, :uniqueness => true
  validates :identifier, :presence => true, :uniqueness => true
end
