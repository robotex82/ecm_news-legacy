class AddNewsPositionIdToNewsCategories < ActiveRecord::Migration
  def self.up
    add_column :news_categories, :news_position_id, :integer
  end

  def self.down
    remove_column :news_categories, :news_position_id
  end
end
