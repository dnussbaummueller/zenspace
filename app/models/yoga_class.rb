class YogaClass < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search,
  against: [:name, :description],
  associated_against: {
    yoga_studios: [:name, :description, :address]
  },
  using: {
    tsearch: { prefix: true }
  }

  belongs_to :user
  belongs_to :yoga_studio_teacher
  has_many :yoga_studios, through: :yoga_studio_teacher
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  validates :style, inclusion: { in: %w[Hatha Vinyasa Ashtanga Iyengar Hot Kundalini Restorative Yin Power Anusara Prenatal Postnatal Jivamukti Other] }
  validates :difficulty, inclusion: { in: ["Beginner", "Intermediate", "Advanced", "All Levels"] }

  def duration_in_minutes
    ((end_time - start_time) / 60).to_i
  end
end
