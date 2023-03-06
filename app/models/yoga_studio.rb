class YogaStudio < ApplicationRecord
  belongs_to :user
  has_many :yoga_studio_teachers
end
