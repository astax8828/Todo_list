class Project < ApplicationRecord
  belongs_to :user

  validates :name_project, presence: true,
            length: {minimum: 5}
  validates :project_start_date, presence: true,
            length: {minimum: 5}
  validates :description, presence: true,
            length: {minimum: 5}
end
