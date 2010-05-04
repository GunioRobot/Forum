class ForumPermission < ActiveRecord::Base
  belongs_to :forum
  belongs_to :role
  
  attr_accessible :forum_id, :role_id, :read, :write, :moderate, :admin
end
