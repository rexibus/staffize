class JobListingsController < ApplicationController
  before_action :set_event, only: [:new, :create, :edit, :update]

  def index
    if current_user and current_user.role == "employer"
      # User is logged in, and employer:
      @job_listings = current_user.job_listings
    else
      # User is logged out, all jobs displayed:
      if params[:search]
        @job_listings = JobListing.search(params[:search]).order("created_at DESC")
      else
        @job_listings = JobListing.all.order("created_at DESC")
      end
    end
  end

  def show
    @events = Event.where.not(latitude: nil, longitude: nil)

    @markers = @events.map do |e|
      {
        lat: e.latitude,
        lng: e.longitude#,

      }
    end

    set_job_listing
    @event = @job_listing.event
    count
  end

  def new
    @job_listing = JobListing.new
  end

  def create
    @job_listing = JobListing.new(job_listing_params)
    @job_listing.event = @event

    if @job_listing.save
      flash[:notice] = "You have successfully created a new job"
      redirect_to job_listing_path(@job_listing)
    else
      flash[:alert] = "Your job creation did not go through"
      redirect_to new_event_job_listing_path(@job_listing)
    end
  end


  def edit
    @job_listing = JobListing.find(params[:id])
  end

  def update
    set_job_listing
    @job_listing.update(job_listing_params)
    redirect_to job_listing_path(@job_listing)
  end

  def destroy
    @job_listings = JobListing.where(:user_id == current_user.id)
    @job_listing = @job_listings.find(params[:id])
    @job_listing.destroy
    redirect_to job_listing_path(@job_listing)
  end

  def candidates
    @users = User.where(role: "candidate")
  end

  def my_applicants
    @job_listing = JobListing.find(params[:id])
    @bookings = @job_listing.bookings
    @applicants = []
    @bookings.each do |b|
      @applicants << b.user
    end
  end

  private

  def set_job_listing
    @job_listing = JobListing.find(params[:id])
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def count
    bookings = @job_listing.bookings.where(:status == "applied")
    @counter = bookings.count
    @counter > 0 ? @counter : "Be the first to apply"
  end

  def job_listing_params
    params.require(:job_listing).permit(:title, :description, :salary, :start_date, :end_date, :event_id)

  end

end
