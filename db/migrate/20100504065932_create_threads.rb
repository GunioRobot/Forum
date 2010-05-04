class CreateThreads < ActiveRecord::Migration
  def self.up
    create_table :threads do |t|
      t.string :title
      t.integer :forum_id
      t.integer :user_id
      t.boolean :sticky
      t.boolean :locked
      t.timestamps
    end
  end
  
  def self.down
    drop_table :threads
  end
end
