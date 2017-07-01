class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  SERVICE= ['Bachelor Degree', 'Master', 'PhD', 'Transfer University']
  belongs_to :role
  has_many :messages, dependent: :destroy
  has_many :conversations, foreign_key: :sender_id, dependent: :destroy
  before_create :assign_role
  after_create :assign_unique_id
  has_one :st_profile
  
  
  def role?
    role.name
  end

  def confirmation_required?
    if self.service.include?('N/A')
      false
    end
  end
  
  def assign_unique_id
    if self.service.include?('Bachelor Degree')
      self.unique_id = "TS00#{100000 + self.id}"
    elsif self.service.include?('Master')
      self.unique_id = "TS00#{200000 + self.id}"
    elsif self.service.include?('PhD')
      self.unique_id = "TS00#{300000 + self.id}"
    elsif service.include?('Transfer University')
      self.unique_id = "TSTR#{400000 + self.id}"
    else
      self.unique_id = self.id
    end
  end

  def assign_role
    if self.service != ('N/A')
      self.role_id = Role.find_by_name("student").id
    end
  end
end
