class Client < ApplicationRecord
  has_many :projects
  has_many :users, through: :projects
  
  validates :name, :presence=> true
  validates :name, :uniqueness => { :case_sensitive=> false }
end
