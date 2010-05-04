class Post < ActiveRecord::Base
  attr_accessible :title, :content, :user_id, :thread_id, :posted_by_ip
end
