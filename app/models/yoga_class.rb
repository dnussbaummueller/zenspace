class YogaClass < ApplicationRecord
  belongs_to :user
  belongs_to :yoga_studio_teacher
end
