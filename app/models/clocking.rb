class Clocking < ApplicationRecord
  belongs_to :subject, optional: true
  belongs_to :student

  validates :topic, presence: true, length: { minimum: 1, maximum: 20 }
  validates :details, presence: true, length: { minimum: 1, maximum: 30 }
  validates :duration, presence: true

  scope :internal, -> { where('subject_id is not null') }
  scope :external, -> { where('subject_id is null') }
end
