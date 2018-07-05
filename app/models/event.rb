class Event < ApplicationRecord
  belongs_to :user

  has_many :job_listings, dependent: :destroy
  include PgSearch
  pg_search_scope :search_generic,
    against: [ :title, :description, :venue, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  # validates :title, :description, :start_date, :end_date, presence: true
  # validates :venue, :address, :zip_code, :province, :country, presence: true
end
