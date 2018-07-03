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
  end

  private

  def set_job_listing
    @job_listing = JobListing.find(params[:id])
  end
end
