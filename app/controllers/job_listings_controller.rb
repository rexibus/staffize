class JobListingsController < ApplicationController
  before_action :set_event, only: [:new, :create, :edit, :update]

  def index
    if current_user and current_user.role == "employer"
      # User is logged in, and employer:
      @job_listings = current_user.job_listings
    else
      # User is logged out, all jobs displayed:
      # if params[:search]
      #   @job_listings = JobListing.search(params[:search]).order("created_at DESC")
      # else
      #   @job_listings = JobListing.all.order("created_at DESC")




      if params[:search] || params[:category]  || params[:search_value] || params[:gender]
        @results = JobListing.search(params[:search]).order("created_at DESC")
        @results2 = JobListing.search(params[:category]).order("created_at DESC")

        if params[:search_value]
          @events_near = Event.near(params[:search_value])
          @results3 = []
          @events_near.each do |e|
            e.job_listings.each do |j|
              @results3 << j
            end
          end
        else
          @results3 = JobListing.all.order("created_at DESC")
        end

        @results4 = JobListing.search(params[:gender]).order("created_at DESC")
        @final = @if_results & @results & @results2 & @results4 & @results3 if !(@if_results.nil?)
        @final = @results & @results2 & @results4 & @results3
        @if_results = @results & @results2 & @results4 & @results3

      else
        @final = JobListing.all.order("created_at DESC")
      end


    end
  end

  def show
    set_job_listing
    @event = []
    @event << @job_listing.event
    count
    @markers = @event.map do |e| {
        lat: e.latitude,
        lng: e.longitude
      }
    end
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
    redirect_to job_listings_path
  end

  def candidates
    @users = User.where(role: "candidate")
  end

  def candidate_show
    if user_signed_in?
      @user = User.find(params[:id])
      @booking = Booking.new
    else
      flash[:alert] = "You must sign in to access the requested page"
      redirect_to new_user_session_path
    end
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
  end

  def job_listing_params
    params.require(:job_listing).permit(:title, :description, :salary, :start_date, :end_date, :event_id, :dress_code, :schedule_detail, :start_time, :end_time, :gender, :currency)

  end

end
