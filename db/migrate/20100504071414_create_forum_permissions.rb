class CreateForumPermissions < ActiveRecord::Migration
  def self.up
    create_table :forum_permissions do |t|
      t.integer :forum_id
      t.integer :role_id
      t.boolean :read
      t.boolean :write
      t.boolean :moderate
      t.boolean :admin
      t.timestamps
    end
  end
  
  def self.down
    drop_table :forum_permissions
  end
end
