class CreateThreads < ActiveRecord::Migration
  def self.up
    create_table :threads do |t|
      t.string :title, :null => false
      t.integer :forum_id, :null => false
      t.integer :user_id, :null => false
      t.boolean :sticky, :default => 0, :null => false
      t.boolean :locked, :default => 0, :null => false
      t.timestamps
    end
  end
  
  def self.down
    drop_table :threads
  end
end
