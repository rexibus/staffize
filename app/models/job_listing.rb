class JobListing < ApplicationRecord
  belongs_to :event
  has_many :bookings

  validates :title, :category, :description, :salary, presence: true
  validates :start_date, :end_date, :currency, presence: true
end
