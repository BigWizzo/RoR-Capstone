class Clocking < ApplicationRecord
  belongs_to :subject
  belongs_to :student

  validates :topic, presence: true, length: { minimum: 10, maximum: 40 }, uniqueness: true
  validates :details, presence: true, length: { minimum: 10, maximum: 40 }
  validates :duration, presence: true
end
