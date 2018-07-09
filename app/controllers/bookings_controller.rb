class BookingsController < ApplicationController

  before_action :set_job_listing, only: [:show, :new, :edit, :update]
  before_action :authenticate_user!

  def index
    @bookings = Booking.where(:user_id == current_user.id)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def my_bookings
    @bookings = Booking.where(user_id: current_user.id)
  end

  def create
    if current_user.role == "candidate"
      if !(params[:event_id].empty?)
        @job_listing = JobListing.find(params[:event_id])
      else
        set_job_listing
      end
    elsif current_user.role == "employer"
      if !(params[:booking][:job_listing_id].empty?)
        @job_listing = JobListing.find(params[:booking][:job_listing_id])
      else
        set_job_listing
      end
    end

    @event = @job_listing.event
    @booking = Booking.new(booking_params)
    @booking.job_listing_id = @job_listing.id

    if current_user.role == "candidate"
      @booking.user_id = current_user.id
    elsif current_user.role == "employer"
      @booking.user_id = params[:booking][:user].to_i
    end


    if current_user.role == "candidate"
      if @booking.save
        flash[:notice] = "You have successfully applied for this job"
        redirect_to job_listing_path(@job_listing)
      else
        flash[:alert] = "Your have already applied for this job"
        redirect_to job_listing_path(@job_listing)
      end
    elsif current_user.role == "employer"
      if @booking.save
        flash[:notice] = "You have successfully offered #{@job_listing.title} to #{@booking.user.first_name} "
        redirect_to candidate_job_listings_path(@booking.user_id)
      else
        flash[:alert] = "Your have already offered #{@job_listing.title} to this candidate"
        redirect_to candidate_job_listings_path(Booking.where(user: params[:booking][:user]).first.user)
      end
    end
  end

  def accept_booking
    @booking = Booking.find(params[:id])
    if params[:status] == "accepted"
      @booking.status = params[:status]
      @booking.save
      redirect_to my_applicants_job_listing_path(@booking.job_listing)
    elsif params[:status] == "declined"
      @booking.status = params[:status]
      @booking.save
      redirect_to my_applicants_job_listing_path(@booking.job_listing)
    end
  end


  def destroy
    @bookings = Booking.where(:user_id == current_user.id)
    @booking = @bookings.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def accept
    @booking = current_user.booking_id.find(params[:id])
    @booking.accept
  end

  def decline
    @booking = current_user.booking_id.find(params[:id])
    @booking.decline
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end

  def set_job_listing
    @job_listing = JobListing.find(params[:job_listing_id])
  end
end

