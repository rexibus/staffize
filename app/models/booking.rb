class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :job_listing

  has_many :reviews
end
