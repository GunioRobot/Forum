class CreateForumPermissions < ActiveRecord::Migration
  def self.up
    create_table :forum_permissions do |t|
      t.integer :forum_id, :null => false
      t.integer :role_id, :null => false
      t.boolean :read, :default => 1, :null => false
      t.boolean :write, :default => 1, :null => false
      t.boolean :moderate, :default => 0, :null => false
      t.boolean :admin, :default => 0, :null => false
      t.timestamps
    end
  end
  
  def self.down
    drop_table :forum_permissions
  end
end
