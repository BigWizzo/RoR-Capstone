class Subject < ApplicationRecord
  belongs_to :student
  has_many :clockings

  validates :title, presence: true, length: { minimum: 3, maximum: 25 }
  validates :description, presence: true
end
