class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.text :source
      t.string :creator
      t.string :format
      t.string :file
      t.string :geotag
      t.string :georange

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
