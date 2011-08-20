class CreateNewsPositions < ActiveRecord::Migration
  def self.up
    create_table :news_positions do |t|
      t.string :name
      t.string :identifier
      t.text :description
      
      t.timestamps
    end
  end

  def self.down
    drop_table :news_positions
  end
end
