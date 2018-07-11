class AddStartTimeToJobListings < ActiveRecord::Migration[5.2]
  def change
    add_column  :job_listings, :start_time, :datetime
  end
end
