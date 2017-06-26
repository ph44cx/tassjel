class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :role
  before_create :assign_role
  after_create :assign_unique_id
  
  
  def role?
    role.name
  end
  
  def assign_unique_id
    if self.service.include?('Ph.D')
      self.unique_id = "TS0030000#{self.id}"
    end
  end

  def assign_role
    self.role_id = Role.find_by_name("student").id
  end
end
