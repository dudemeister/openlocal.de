class CreateIssues < ActiveRecord::Migration
  def self.up
    create_table :issues do |t|
      t.date :publish_on
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :issues
  end
end
