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

    def delete_offers
      @offer = Booking.find(params[:id])
      @offer.destroy
      redirect_to offers_path

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

  def accept_applicant
    @booking = Booking.find(params[:id])
    if params[:status] == "accepted"
      @booking.status = params[:status]
      @booking.save
      redirect_to applicants_path
    elsif params[:status] == "declined"
      @booking.status = params[:status]
      @booking.save
      redirect_to applicants_path
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

    def delete_hired
      @offer = Booking.find(params[:id])
      @offer.destroy
      redirect_to staff_path
    end
  end

  def candidate_jobs
    @candidate_jobs = []
    Booking.where(user: current_user).each do |b|
          @candidate_jobs << b if b.status == "accepted"
    end
  end

end
