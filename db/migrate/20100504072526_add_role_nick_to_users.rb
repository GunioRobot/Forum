class AddRoleNickToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :nick, :string
    add_column :users, :role_id, :integer
  end
  
  def self.down
    remove_column :users, :nick
    remove_column :users, :role_id
  end
end
