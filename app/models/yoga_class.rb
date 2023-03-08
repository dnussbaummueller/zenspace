class YogaClass < ApplicationRecord
  belongs_to :user
  belongs_to :yoga_studio_teacher
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  validates :style, inclusion: { in: %w[Hatha Vinyasa Ashtanga Iyengar Hot Kundalini Restorative Yin Power Anusara Prenatal Postnatal Jivamukti Other] }

  def duration_in_minutes
    ((end_time - start_time) / 60).to_i
  end
end
