class Subject < ApplicationRecord
  belongs_to :student
  has_many :clockings
  has_one_attached :icon

  validates :title, presence: true,length: { minimum: 3, maximum: 20 }
  validates :description, presence: true
  validate :icon_type

  def icon_type
    if icon.attached? && !icon.content_type.in?(%w(icon/jpeg icon/png))
      errors.add(:icon, 'Must be a JPEG or PNG')
    end
  end
end
