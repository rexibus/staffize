class JobListingsController < ApplicationController
  def index
    @job_listings = JobListing.all
  end

  def show
    @job_listing = JobListing.find(params[:id])

  end
end
