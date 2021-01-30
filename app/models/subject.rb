class Subject < ApplicationRecord
  belongs_to :student
  has_many :clockings, dependent: :destroy
  has_one_attached :icon

  validates :title, presence: true, length: { minimum: 1, maximum: 40 }
  validates :description, presence: true
  validate :icon_type

  def icon_type
    return unless icon.attached? && !icon.content_type.in?(%w[image/jpeg image/png image/jpg])

    errors.add(:icon, 'Must be a JPEG or PNG')
  end

end
