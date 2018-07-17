class PagesController < ApplicationController
#  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def offers
    @offered_jobs = []
    current_user.events.each do |e|
      e.job_listings.each do |j|
        j.bookings.each do |b|
          @offered_jobs << b if b.status == "offered"
        end
      end
    end
  end

  def applicants
    @applicants = []
    current_user.events.each do |e|
      e.job_listings.each do |j|
        j.bookings.each do |b|
          @applicants << b if b.status == "applied"
        end
      end
    end
  end

  def received_offers
    @received_offers = []
    Booking.where(user: current_user).each do |b|
          @received_offers << b if b.status == "offered"
    end
  end

  def staff
    @hired_jobs = []
    current_user.events.each do |e|
      e.job_listings.each do |j|
        j.bookings.each do |b|
          @hired_jobs << b if b.status == "accepted"
        end
      end
    end

  end

  def candidate_jobs
    @candidate_jobs = []
    Booking.where(user: current_user).each do |b|
          @candidate_jobs << b if b.status == "accepted"
    end
  end

end
