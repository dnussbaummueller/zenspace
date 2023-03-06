class Teacher < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :yoga_studio_teachers
end
