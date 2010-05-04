class Role < ActiveRecord::Base
  has_many :users
  has_many :forum_permissions
  
  attr_accessible :name
end
