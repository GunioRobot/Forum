class Forum < ActiveRecord::Base
  acts_as_nested_set :scope => :tree_id
  
  has_many :threads
  has_many :forum_permissions
  
  before_save :set_tree
  after_save :reassign_parent
  
  def set_tree
    if self.new_parent_id.present?
      parent = Forum.find(self.new_parent_id)
      self.tree_id = parent.tree_id
    else
      self.tree_id = Forum.find(:last, :order => 'tree_id ASC').tree_id + 1
    end
  end
  
  def reassign_parent
    if self.new_parent_id.present?
      self.move_to_child_of Forum.find(self.new_parent_id)
    end
  end
  
  def user_can(user)
    true
  end
end
