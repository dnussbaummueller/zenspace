class Teacher < ApplicationRecord
  belongs_to :user
  has_many :reviews, as: :reviewable
  has_many :yoga_studio_teachers
  has_many_attached :photos
end
