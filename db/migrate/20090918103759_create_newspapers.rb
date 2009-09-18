class CreateNewspapers < ActiveRecord::Migration
  def self.up
    create_table :newspapers do |t|
      t.string :name
      t.string :periodicity
      t.string :destination_scope
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :newspapers
  end
end
