class JobListingsController < ApplicationController
  def index
    @job_listings = JobListing.all
  end

  def show
    set_job_listing
  end

  private

  def set_job_listing
    @job_listing = JobListing.find(params[:id])
  end
end
