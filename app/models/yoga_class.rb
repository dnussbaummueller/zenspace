class YogaClass < ApplicationRecord
  belongs_to :user
  belongs_to :yoga_studio_teacher
  has_many :yoga_studios, through: :yoga_studio_teacher
  has_many_attached :photos
end
