class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.text :caption
      t.string :author
      t.integer :picture_id
      t.string :geotag
      t.string :georange

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
