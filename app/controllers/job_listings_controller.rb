class JobListingsController < ApplicationController

  def index
    @job_listings = JobListing.all
    if params[:search]
      @job_listings = JobListing.search(params[:search]).order("created_at DESC")
    else
      @job_listings = JobListing.all.order("created_at DESC")
    end
  end

  def show
    set_job_listing
    set_event
    count
  end

  def new
    raise

  end

  private

  def set_job_listing
    @job_listing = JobListing.find(params[:id])
  end

  def set_event
    @event = @job_listing.event
  end

  def count
    bookings = Booking.where(:status == "applied")
    @counter = bookings.count
    @counter > 0 ? @counter : "Be the first to apply"
  end

end
