class Thread < ActiveRecord::Base
  attr_accessible :title, :forum_id, :user_id, :sticky, :locked
end
