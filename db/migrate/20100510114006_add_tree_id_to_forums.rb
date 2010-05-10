class AddTreeIdToForums < ActiveRecord::Migration
  def self.up
    add_column :forums, :tree_id, :integer, :null => false, :default => 1
  end

  def self.down
    remove_column :forums, :tree_id
  end
end
