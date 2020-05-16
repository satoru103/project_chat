class Project < ApplicationRecord
  has_many :user_project
  has_many :users , through: :users_projects
end
