class Forum < ActiveRecord::Base
  attr_accessible :title, :description, :parent_id, :lft, :rgt, :new_parent_id
end
