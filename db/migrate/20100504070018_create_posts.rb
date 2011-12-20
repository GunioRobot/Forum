class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title, :null => false
      t.text :content, :null => false
      t.integer :user_id, :null => false
      t.integer :thread_id, :null => false
      t.string :posted_by_ip, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
