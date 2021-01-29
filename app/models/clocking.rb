class Clocking < ApplicationRecord
  belongs_to :internal, class_name: "Subject", optional: true
  belongs_to :external, class_name: "Subject", optional: true
  belongs_to :student

  validates :topic, presence: true, length: { minimum: 3, maximum: 20 }
  validates :details, presence: true, length: { minimum: 6, maximum: 30 }
  validates :duration, presence: true
end
