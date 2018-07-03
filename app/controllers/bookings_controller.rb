class BookingsController < ApplicationController
  before_action :set_job_listing
  # before_action :authenticate_user!


  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    # job_listing_id = params[:user][:job_listing_id]
    job_listing = JobListing.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.job_listing = @booking
    if @booking.save
      redirect_to cocktail_path(@cocktail)
    else
      render "job_listing/show" #syntax ?
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
    params.require(:booking).permit(:status, :start_date, :end_date, :id)
  end

  def set_job_listing
    @job_listing = JobListing.find(params[:job_listing_id])
  end
end

