class NewsCategory < ActiveRecord::Base
  has_many :news
  belongs_to :news_position
  validates :name, :presence => true, :uniqueness => true
  validates :identifier, :presence => true, :uniqueness => true
  validates :news_position_id, :presence => true
end
