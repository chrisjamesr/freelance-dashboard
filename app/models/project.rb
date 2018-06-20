class Project < ApplicationRecord
  belongs_to :user
  # belongs_to :client
  has_many :tasks
  has_many :notes, through: :tasks
end
