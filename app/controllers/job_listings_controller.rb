class JobListingsController < ApplicationController
  def index
    @job_listings = JobListing.all
  end

  def show

  end
end
