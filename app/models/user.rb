class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true

  has_many :tasks, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
