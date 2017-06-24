class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :role
  before_create :assign_role
  
  def role?
    role.name
  end

  def assign_role
    self.role_id = Role.find_by_name("student").id
  end
end
