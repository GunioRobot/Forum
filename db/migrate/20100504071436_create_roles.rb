class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name, :null => false
      t.timestamps
    end
    
    add_index :roles, :name, :unique => true
  end
  
  def self.down
    drop_table :roles
  end
end
