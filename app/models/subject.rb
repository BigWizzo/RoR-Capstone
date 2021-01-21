class Subject < ApplicationRecord
  belongs_to :student

  validates :title, presence: true, length: { minimum: 3, maximum: 25 }
  validates :description, presence: true
end
