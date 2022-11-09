class Project < ApplicationRecord
  validates :name, presence: true

  has_many :tasks, dependent: :destroy

  scope :ordered, -> { order(id: :desc) }
end
