class JobListing < ApplicationRecord
  belongs_to :event
  has_many :bookings, dependent: :destroy

  # validates :title, :category, :description, :salary, presence: true
  # validates :start_date, :end_date, :currency, presence: true

  def self.search(search)
    where("title LIKE ? OR category LIKE ?", "%#{search}%", "%#{search}%")
  end


end
