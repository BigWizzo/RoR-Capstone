class Subject < ApplicationRecord
  belongs_to :student
  has_many :clockings
  has_one_attached :icon

  validates :title, presence: true, length: { minimum: 3, maximum: 20 }
  validates :description, presence: true
end
