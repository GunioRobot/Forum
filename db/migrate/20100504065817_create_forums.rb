class CreateForums < ActiveRecord::Migration
  def self.up
    create_table :forums do |t|
      t.string :title, :null => false
      t.string :description
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :new_parent_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :forums
  end
end
