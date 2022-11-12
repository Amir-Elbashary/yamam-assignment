class Task < ApplicationRecord
  enum priority: %i[medium low high]
  broadcasts_to ->(task) { "tasks" }, inserts_by: :prepend
  has_rich_text :description
  has_one_attached :document

  validates :title, presence: true

  belongs_to :project
  belongs_to :user, optional: true

  scope :ordered, -> { order(id: :desc) }
end
