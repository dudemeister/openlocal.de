class AddNewspaperIdToIssue < ActiveRecord::Migration
  def self.up
    add_column :issues, :newspaper_id, :integer
  end

  def self.down
    remove_column :issues, :newspaper_id
  end
end
