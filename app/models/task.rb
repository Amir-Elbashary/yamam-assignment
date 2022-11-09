class Task < ApplicationRecord
  validates :title, presence: true

  belongs_to :project
  belongs_to :user, optional: true
end
