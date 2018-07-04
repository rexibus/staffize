class BookingsController < ApplicationController
  before_action :set_job_listing, only: [:show, :create, :update]
  before_action :authenticate_user!

  def index
    @bookings = Booking.where(:user_id == current_user.id)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    raise
    @booking = Booking.new
  end

  def my_bookings
    @bookings = Booking.where(user_id: current_user.id)
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


  def destroy
    raise
    @bookings = Booking.where(:user_id == current_user.id)
    @booking = @bookings.find(params[:id])
    @booking.destroy
    redirect_to job_listing_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end

  def set_job_listing
    @job_listing = JobListing.find(params[:job_listing_id])
  end
end
