class Teacher < ApplicationRecord
  belongs_to :user
  has_many :reviews, as: :reviewable
  has_many_attached :photos

  has_many :yoga_studio_teachers
  has_many :yoga_classes, through: :yoga_studio_teachers

  # validation
  validates :name, presence: true, length: { in: 3..50 }
  validates :description, presence: true, length: { in: 20..800 }
  validate :photos_type

  def photos_type
    if photos.attached? == false
      errors.add(:photos, ": at least one photo should be attached!")
    end
  end
end
