class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :http_authenticatable, :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :registerable, :database_authenticatable, :confirmable, :recoverable,
         :rememberable, :trackable, :validatable

  has_many :posts
  has_many :threads
  belongs_to :role
  
  before_create :set_default_role
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :nick, :email, :password, :password_confirmation
  
  def role?(role)
    if self.role
      self.role.name.to_sym == role
    else
      false
    end
  end
  
  def set_default_role
    self.role = Role.find_by_name('registered')
  end
end
