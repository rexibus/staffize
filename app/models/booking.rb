class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :job_listing

  has_many :reviews

  validates :user_id, uniqueness: { scope: :job_listing_id }
end
