class Thread < ActiveRecord::Base
  belongs_to :forum
  belongs_to :user
  has_many :posts
  
  attr_accessible :title, :forum_id, :user_id, :sticky, :locked
end
