class Project < ApplicationRecord
  has_many :users_projects
  has_many :users , through: :users_projects
  has_many :todolists
  belongs_to :progress
end
