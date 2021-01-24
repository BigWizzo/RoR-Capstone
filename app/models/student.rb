class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:username]

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }

  has_many :subjects
  has_many :clockings

  after_save :external
  
  def external
    if Subject.where(student_id: self.id, title: "External").empty?
      Subject.create(student_id: self.id, title: "External", description: "For all your non Subject Clockings")
      # subject.icon.attach(io: File.open("#{Rails.root}/app/assets/images/default.jpg"), filename: 'default.jpg')
      # subject.save!
    end
  end
end
