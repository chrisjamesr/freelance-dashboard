class User < ApplicationRecord
  has_secure_password
  has_many :projects
  has_many :tasks, through: :projects
  has_many :clients, through: :projects

  validates :name, :email, :presence=> true
  validates :name, :email, :uniqueness => { :case_sensitive=> false }
  validates :password, :presence => true, :length => { in: 6..20 }
  validate :is_valid_email


  def is_valid_email
    #check for valid email address
    if !!email.match(/.+[@].+[.].+/).nil?
      errors.add(:email, "Please enter valid email address")
    end
  end
end
