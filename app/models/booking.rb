class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :job_listing

  has_many :reviews

  validates :user, uniqueness: { scope: :job_listing }

  def accept
    self.status = "accepted"
    save
  end

  def decline
    self.status = "declined"
    save
  end

end
