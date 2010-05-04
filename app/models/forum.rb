class Forum < ActiveRecord::Base
  acts_as_nested_set
  
  has_many :threads
  has_many :forum_permissions
  
  attr_accessible :title, :description, :parent_id, :lft, :rgt, :new_parent_id
  
  after_save :reassign_parent
  
  def reassign_parent
    self.move_to_child_of ProductGroup.find(self.new_parent_id)
  end
  
  def user_can(user)
    true
  end
end
