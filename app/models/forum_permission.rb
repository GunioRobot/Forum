class ForumPermission < ActiveRecord::Base
  attr_accessible :forum_id, :role_id, :read, :write, :moderate, :admin
end
