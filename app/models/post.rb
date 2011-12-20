class Post < ActiveRecord::Base
  belongs_to :thread
  belongs_to :user

  attr_accessible :title, :content, :user_id, :thread_id, :posted_by_ip

  def user_can(user)
    true
  end
end
