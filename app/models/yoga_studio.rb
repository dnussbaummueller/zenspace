class YogaStudio < ApplicationRecord
  belongs_to :user
  has_many :reviews, as: :reviewable
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :yoga_studio_teachers
  has_many :yoga_classes, through: :yoga_studio_teachers
end
