class JobListing < ApplicationRecord
  belongs_to :event

  validates :title, :category, :description, :salary, presence: true
  validates :start_date, :end_date, :currency, presence: true
end
