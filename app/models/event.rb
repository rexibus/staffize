class Event < ApplicationRecord
  belongs_to :user

  has_many :job_listings, dependent: :destroy

  # validates :title, :description, :start_date, :end_date, presence: true
  # validates :venue, :address, :zip_code, :province, :country, presence: true
end
