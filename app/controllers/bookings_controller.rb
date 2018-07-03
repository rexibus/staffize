class BookingsController < ApplicationController
  before_action :set_job_listing
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "applied"
    @booking.job_listing_id = @job_listing.id
    @booking.user_id = current_user.id

    if @booking.save
      flash[:notice] = "You have successfully applied for this job"
      redirect_to job_listing_path(@job_listing)
    else
      flash[:alert] = "Your application did not go through"
      redirect_to job_listing_path(@job_listing)
    end

  end

  def show
    @booking = Booking.find(params[:id])
    @job_listings = JobListing.where(booking_id: params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end

  def set_job_listing
    @job_listing = JobListing.find(params[:job_listing_id])
  end
end

