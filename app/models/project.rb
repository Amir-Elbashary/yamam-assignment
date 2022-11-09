class Project < ApplicationRecord
  broadcasts_to ->(project) { "projects" }, inserts_by: :prepend

  validates :name, presence: true

  has_many :tasks, dependent: :destroy

  scope :ordered, -> { order(id: :desc) }
end
