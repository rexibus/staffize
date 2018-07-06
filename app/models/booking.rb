class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :job_listing

  has_many :reviews

  validates :user_id, uniqueness: { scope: :job_listing_id }

  def accept
    self.status = "accepted"
    save
  end

  def decline
    self.status = "declined"
    save
  end
end
